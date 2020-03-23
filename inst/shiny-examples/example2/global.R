library(canvasXpress)
library(canvasXpress.data)
library(glue)
library(htmlwidgets)
library(limma)


# dataset is from canvasxpress.data
g_GSE9750 <- list(x = GSE9750_sample_annot,
                  y = GSE9750_expression,
                  z = GSE9750_gene_details)

# "see" NA values for the metadata when charting/grouping/etc.
g_GSE9750$x[is.na(g_GSE9750$x)] <- "<NA>"

# custom sorting for gene drop-down
g_geneChoices      <- setNames(rownames(g_GSE9750$y), g_GSE9750$z[rownames(g_GSE9750$y), 'Symbol'])
g_geneChoices      <- g_geneChoices[c(which(grepl('\\(', names(g_geneChoices)))[1]:length(g_geneChoices),
                                      1:which(grepl('\\C', names(g_geneChoices)))[1]-1)]
g_geneChoices.sort <- g_geneChoices[sort(names(g_geneChoices))]
g_geneChoices.splt <- grep('^A', names(g_geneChoices.sort))[1]
g_geneChoices      <- g_geneChoices.sort[c(g_geneChoices.splt:length(g_geneChoices), 1:(g_geneChoices.splt - 1))]
