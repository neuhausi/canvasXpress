context("config-params")


# Reset session cache before and after running tests
setup({
    .cx_config_params_cache$df <- NULL
})

teardown({
    .cx_config_params_cache$df <- NULL
})

# ------------------------------------------------------------------------------
# 1. Internal Helper: .cx_scalar_or_na
# ------------------------------------------------------------------------------
test_that(".cx_scalar_or_na handles NULL, vectors, lists, and scalars correctly", {
    # NULL input
    expect_identical(.cx_scalar_or_na(NULL), NA_character_)

    # Length != 1
    expect_identical(.cx_scalar_or_na(c("a", "b")), NA_character_)
    expect_identical(.cx_scalar_or_na(character(0)), NA_character_)

    # List input
    expect_identical(.cx_scalar_or_na(list(a = 1)), NA_character_)

    # Valid scalars
    expect_identical(.cx_scalar_or_na("hello"), "hello")
    expect_identical(.cx_scalar_or_na(123), "123")
    expect_identical(.cx_scalar_or_na(TRUE), "TRUE")
})

# ------------------------------------------------------------------------------
# 2. cxConfigParams()
# ------------------------------------------------------------------------------
test_that("cxConfigParams reads parameters, constructs data frame, and uses cache", {
    .cx_config_params_cache$df <- NULL

    # Test fetching actual catalog
    params <- cxConfigParams()
    expect_s3_class(params, "data.frame")
    expect_named(params, c("parameter", "type", "default", "description", "options"))

    # Test session caching hit
    dummy_df                   <- data.frame(parameter = "cachedParam", stringsAsFactors = FALSE)
    .cx_config_params_cache$df <- dummy_df
    expect_identical(cxConfigParams(), dummy_df)

    .cx_config_params_cache$df <- NULL
})

test_that("cxConfigParams throws error when config file is missing or invalid path", {
    .cx_config_params_cache$df <- NULL

    # Intercept system.file call via lexical environment scoping
    mock_env             <- new.env(parent = asNamespace("canvasXpress"))
    mock_env$system.file <- function(...) ""

    orig_env                    <- environment(cxConfigParams)
    environment(cxConfigParams) <- mock_env
    on.exit({
        environment(cxConfigParams) <- orig_env
        .cx_config_params_cache$df  <- NULL
    })

    expect_error(
        cxConfigParams(),
        "CanvasXpress config catalog not found"
    )
})

test_that("cxConfigParams handles null descriptions and null options in JSON catalog", {
    skip_if(getRversion() < "4.1.0")
    .cx_config_params_cache$df <- NULL

    mock_catalog <- list(
        parameters = list(
            list(
                parameter   = "param1",
                type        = "string",
                default     = "val1",
                description = NULL,
                options     = list("val1", "val2")
            ),
            list(
                parameter   = "param2",
                type        = "numeric",
                default     = NULL,
                description = "Some description",
                options     = NULL
            )
        )
    )

    with_mocked_bindings(
        fromJSON = function(...) mock_catalog,
        .package = "jsonlite",
        {
            res <- cxConfigParams()
            expect_equal(nrow(res), 2)
            expect_true(is.na(res$description[1]))
            expect_equal(res$description[2], "Some description")
            expect_equal(res$options[[1]], c("val1", "val2"))
            expect_null(res$options[[2]])
        }
    )

    .cx_config_params_cache$df <- NULL
})

# ------------------------------------------------------------------------------
# 3. cxValidateConfig()
# ------------------------------------------------------------------------------
test_that("cxValidateConfig validates input structures", {
    res <- cxValidateConfig(NULL)
    expect_equal(res, list(unknown = NULL, bad_options = list()))

    expect_error(
        cxValidateConfig("not a list"),
        "'config' must be a named list of parameter = value pairs."
    )

    expect_error(
        cxValidateConfig(list("Bar", "Tableau")),
        "'config' must be a named list of parameter = value pairs."
    )
})

test_that("cxValidateConfig detects unknown parameters and bad enumerated options", {
    .cx_config_params_cache$df <- NULL

    mock_params <- data.frame(
        parameter        = c("graphType", "colorScheme"),
        type             = c("string", "string"),
        default          = c("Bar", "Default"),
        description      = c("Graph type", "Color scheme"),
        stringsAsFactors = FALSE
    )
    mock_params$options <- list(c("Bar", "Line", "Pie"), NULL)
    .cx_config_params_cache$df <- mock_params

    # 1. Clean config
    res_clean <- cxValidateConfig(list(graphType = "Bar", colorScheme = "Tableau"))
    expect_equal(res_clean$unknown, character(0))
    expect_equal(res_clean$bad_options, list())

    # 2. Config with blank parameter name (nzchar filtering check)
    blank_name_cfg        <- list("Bar")
    names(blank_name_cfg) <- ""
    res_blank             <- cxValidateConfig(blank_name_cfg)
    expect_equal(res_blank$unknown, character(0))

    # 3. Non-string scalar / vector option values should skip option validation
    res_non_string <- cxValidateConfig(list(graphType = c("Bar", "Line"), colorScheme = 123))
    expect_equal(res_non_string$bad_options, list())

    # 4. Unknown params + Bad options (strict = FALSE -> warning)
    expect_warning(
        res_warn <- cxValidateConfig(
            list(unknownParam = "foo", graphType = "InvalidType"),
            strict = FALSE
        ),
        "Unknown parameter\\(s\\): unknownParam.*'graphType' = 'InvalidType' is not an allowed value"
    )
    expect_equal(res_warn$unknown, "unknownParam")
    expect_equal(res_warn$bad_options, list(graphType = "InvalidType"))

    # 5. Unknown params + Bad options (strict = TRUE -> error)
    expect_error(
        cxValidateConfig(
            list(unknownParam = "foo", graphType = "InvalidType"),
            strict = TRUE
        ),
        "Unknown parameter\\(s\\): unknownParam.*'graphType' = 'InvalidType' is not an allowed value"
    )

    .cx_config_params_cache$df <- NULL
})
