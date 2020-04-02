if (interactive()) {
    library(dplyr)

    webFile <- readLines(con = "https://canvasxpress.org/data/cX-function.R")

    # save a localized version
    pkgFile <- data.frame(orig = webFile, stringsAsFactors = F) %>%
        mutate(isfileline   = grepl('read.table\\("http.*canvasxpress.org', orig),
               #exclude specific larger files from url conversion - must match #canvasxpress.data file filter
               isfileline   = (!grepl('cX-codiv|LungCancinoma', orig) & isfileline),
               filename     = ifelse(isfileline, gsub('.*/', '', orig), NA),
               filename     = ifelse(is.na(filename), NA, gsub('\\.txt".*$', '', filename))) %>%
        rowwise() %>%
        mutate(new = ifelse(isfileline,
                            gsub('"http.*canvasxpress.org.*txt"', paste0('get_data("', filename, '.txt.gz")'), orig),
                            orig),
               new = gsub('\\$', '$', new, fixed = T))

    writeLines(pkgFile$new, "tests/cX-ui-functions.R")

    message("Package must be rebuilt and reloaded in order to realize changes to the tests/cX-ui-functions.R.",
            "If new or changed datasets are required you must also update the canvasxpress.data package similarly.")
} else {
    message("Setup not run - only can be run interactively")
}
