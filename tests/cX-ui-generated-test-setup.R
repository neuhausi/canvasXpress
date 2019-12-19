if (interactive()) {
    library(dplyr)

    webFile <- readLines(con = "http://canvasxpress.org/data/cX-function.R")

    #grab url download links
    dataUrls <- data.frame(line = webFile, stringsAsFactors = F) %>%
        filter(grepl('read.table("http://www.canvasxpress.org', line,  fixed = TRUE)) %>%
        mutate(url = gsub('.*=read.table\\("', '', line),
               url = gsub('", .*', '', url)) %>%
        select(url) %>%
        distinct()

    # save all the datasets to the test data directory
    for (url in dataUrls$url) {
        loc <- file(url, method = "libcurl")
        data <- readLines(loc)
        close(loc)

        filename <- gsub('.*/', '', url)
        gzcon <- gzfile(paste0("inst/extdata/", filename, ".gz"), "w")
        writeLines(data, gzcon)
        close(gzcon)
    }

    # save a localized version
    pkgFile <- data.frame(orig = webFile, stringsAsFactors = F) %>%
        mutate(isfileline = grepl('read.table("http://www.canvasxpress.org', orig, fixed = TRUE),
               filename   = ifelse(isfileline, gsub('.*/', '', orig), NA),
               filename   = ifelse(is.na(filename), NA, gsub('\\.txt".*$', '', filename))) %>%
        rowwise() %>%
        mutate(new = gsub('"http://www.canvasxpress.org.*txt"',
                          paste0('system.file("extdata", "', filename, '.txt.gz", package = "canvasXpress")'), orig)) %>%
        mutate(new = gsub('\\$', '$', new, fixed = T)) %>%
        mutate(new = gsub('http://www.canvasxpress.org', 'https://www.canvasxpress.org', new, fixed = T))

    writeLines(pkgFile$new, "tests/cX-ui-functions.R")

    message("Package must be rebuilt and reloaded in order to realize any new data files for testing")
} else {
    message("Setup not run - only can be run interactively")
}
