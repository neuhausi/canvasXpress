library(canvasXpress)
#NOTE: temporary until canvasXpress.data is on CRAN
#library(canvasXpress.data)
library(glue)
library(htmlwidgets)
library(limma)


# dataset is from canvasxpress.data
#NOTE: temporary until canvasXpress.data is on CRAN
# g_GSE9750 <- GSE9750
g_GSE9750 <- readRDS(system.file("extdata", "GSE9750_sm.rds", package = "canvasXpress"))


# we want to analyze age in groups
g_GSE9750$x$Age <- as.character(cut(as.numeric(g_GSE9750$x$Age),
                                    breaks = c(0, 40, 50, 60, 100),
                                    labels = c("<40", "40-50", "50-60", "60+")))
g_GSE9750$x$Age[is.na(g_GSE9750$x$Age)] <- "unknown"


# we would like to consider and "see" NA values for the rest of the metadata
g_GSE9750$x[is.na(g_GSE9750$x)] <- "<NA>"


# gene choices used throughout the program
#NOTE: temporary until canvasXpress.data is on CRAN
# g_geneChoices <- setNames(rownames(g_GSE9750$y),
#                           glue("{gsub(' /// ', ';', g_GSE9750$z[rownames(g_GSE9750$y), 'Symbol'])} ({rownames(g_GSE9750$y)})"))
g_geneChoices <- setNames(rownames(g_GSE9750$y),
                          glue("{gsub(' /// ', ';', g_GSE9750$z[rownames(g_GSE9750$y), 'Symbol'])}"))

# custom sorting
g_geneChoices <- g_geneChoices[sort(names(g_geneChoices))]
g_geneChoices <- g_geneChoices[c(which(grepl('^A', names(g_geneChoices)))[1]:length(g_geneChoices),
                                 1:which(grepl('^A', names(g_geneChoices)))[1]-1)]
