## Regional association (LocusZoom) plots.
##
## A LocusZoom figure is a two-track canvasXpress Genome chart: a dataframe track
## holding the GWAS scatter (and, on its right-hand axis, the recombination rate)
## over a box track holding the transcript models. These helpers assemble that
## structure from the tidy data frames an analyst already has, so the caller never
## hand-writes a tracks object.
##
## Vocabulary follows locuszoomr (Lewis, CRAN): a locus is a gene plus a flank or
## an explicit range, LD is an r2 column, and the index SNP is the one with the
## smallest p-value unless named.

## locuszoomr's LD_scheme, as hex. R's green3/cyan2 are NOT CSS colour names and
## render black on a canvas, so they are converted here rather than passed through.
.cxLocusLDColors <- list(`0.8 - 1.0` = "rgb(255,0,0)",
                         `0.6 - 0.8` = "rgb(255,165,0)",
                         `0.4 - 0.6` = "rgb(0,205,0)",
                         `0.2 - 0.4` = "rgb(0,229,238)",
                         `0.0 - 0.2` = "rgb(65,105,225)",
                         `NA`        = "rgb(128,128,128)")

#' @keywords internal
#' @noRd
.cxLocusColumn <- function(data, name, what, required = TRUE) {
    if (is.null(name)) {
        hit <- switch(what,
                      chrom = grep("^chr",   names(data), ignore.case = TRUE, value = TRUE),
                      pos   = grep("pos",    names(data), ignore.case = TRUE, value = TRUE),
                      p     = grep("^p$|^p?val", names(data), ignore.case = TRUE, value = TRUE),
                      labs  = grep("^rs?id$|^snp$", names(data), ignore.case = TRUE, value = TRUE),
                      character(0))
        if (length(hit) != 1) {
            if (!required) return(NULL)
            stop(sprintf("cx_locus: could not infer the %s column; name it explicitly", what))
        }
        name <- hit[1]
    }
    if (!name %in% names(data)) {
        stop(sprintf("cx_locus: column '%s' is not in the data", name))
    }
    name
}

#' @keywords internal
#' @noRd
.cxLocusBin <- function(r2) {
    out <- rep("NA", length(r2))
    ok  <- !is.na(r2)
    out[ok & r2 <= 0.2] <- "0.0 - 0.2"
    out[ok & r2 >  0.2 & r2 <= 0.4] <- "0.2 - 0.4"
    out[ok & r2 >  0.4 & r2 <= 0.6] <- "0.4 - 0.6"
    out[ok & r2 >  0.6 & r2 <= 0.8] <- "0.6 - 0.8"
    out[ok & r2 >  0.8] <- "0.8 - 1.0"
    out
}

#' @keywords internal
#' @noRd
.cxLocusGeneTrack <- function(genes, highlight = NULL, height = 16) {
    if (is.null(genes) || !nrow(genes)) return(NULL)
    need <- c("gene", "start", "end")
    if (!all(need %in% names(genes))) {
        stop("cx_locus: genes needs at least the columns gene, start and end")
    }
    features <- lapply(seq_len(nrow(genes)), function(i) {
        row <- genes[i, ]
        ## exons: a list column of start/end pairs, or the whole gene body
        exons <- NULL
        if ("exons" %in% names(genes) && !is.null(genes$exons[[i]])) {
            ex <- genes$exons[[i]]
            exons <- lapply(seq_len(nrow(ex)), function(j) list(ex[j, 1], ex[j, 2]))
        }
        if (is.null(exons)) exons <- list(list(row$start, row$end))
        hit  <- !is.null(highlight) && row$gene %in% highlight
        fill <- if (hit) "rgb(220,20,60)" else "rgb(0,0,139)"
        feature <- list(id = as.character(row$gene), data = exons,
                        fill = fill, outline = fill,
                        dir = if (!is.null(row$strand) && row$strand %in% c("-", "left")) "left" else "right")
        if ("biotype" %in% names(genes)) feature$geneType <- as.character(row$biotype)
        feature
    })
    list(name = "Genes", type = "box", height = height, connect = TRUE, data = features)
}

#' Regional association (LocusZoom) plot
#'
#' Builds a canvasXpress Genome chart in the shape of a LocusZoom regional
#' association plot: the GWAS scatter of -log10(p) against position, coloured by
#' linkage disequilibrium with the index SNP, over a track of transcript models.
#' The recombination rate, when supplied, is drawn as a line on the track's
#' right-hand axis, and the genome-wide significance threshold as a dashed line.
#'
#' Column names are inferred the way locuszoomr infers them (a chromosome column
#' matching "chr", a position column matching "pos", a p-value column named "p"
#' or matching "^p?val", an id column matching "rsid"/"snp") and can each be named
#' explicitly instead.
#'
#' @param data a data frame of GWAS summary statistics, one row per SNP
#' @param genes a data frame of transcripts with columns gene, start, end and
#'   optionally strand ("+"/"-"), biotype, and exons (a list column of two-column
#'   start/end matrices or data frames)
#' @param recomb a data frame of recombination rate with columns pos and rate
#' @param chrom,pos,p,labs column names; inferred when left NULL
#' @param ld name of the r2 column; when NULL the points are coloured by whether
#'   they clear \code{pcutoff}
#' @param index_snp id of the lead SNP; defaults to the smallest p-value
#' @param xrange two positions bounding the window; defaults to the data range
#' @param pcutoff genome-wide significance threshold (default 5e-8)
#' @param label_index label the index SNP (default TRUE)
#' @param highlight gene names drawn in the highlight colour and given the first rows
#' @param unit tick unit for the genomic axis: "Mb", "kb", "bp" or "auto"
#' @param frame axis lines to draw: "L", "box" or "none"
#' @param title chart title
#' @param ... further canvasXpress config options
#' @return a canvasXpress htmlwidget
#' @export
#' @examples
#' \dontrun{
#' cx_locus(gwas, genes = tx, recomb = rc, ld = "r2", highlight = "UBE2L3")
#' }
cx_locus <- function(data, genes = NULL, recomb = NULL,
                     chrom = NULL, pos = NULL, p = NULL, labs = NULL,
                     ld = NULL, index_snp = NULL, xrange = NULL,
                     pcutoff = 5e-08, label_index = TRUE, highlight = NULL,
                     unit = "auto", frame = "L", title = NULL, ...) {

    posCol <- .cxLocusColumn(data, pos,  "pos")
    pCol   <- .cxLocusColumn(data, p,    "p")
    labCol <- .cxLocusColumn(data, labs, "labs", required = FALSE)
    chrCol <- .cxLocusColumn(data, chrom, "chrom", required = FALSE)

    position <- as.numeric(data[[posCol]])
    pval     <- as.numeric(data[[pCol]])
    pval[!is.na(pval) & pval < 5e-324] <- 5e-324
    logp     <- -log10(pval)
    ids      <- if (is.null(labCol)) paste0("snp", seq_along(position)) else as.character(data[[labCol]])

    keep <- !is.na(position) & !is.na(logp)
    if (!is.null(xrange)) keep <- keep & position >= xrange[1] & position <= xrange[2]
    if (!any(keep)) stop("cx_locus: no SNPs in the window")
    position <- position[keep]; logp <- logp[keep]; ids <- ids[keep]

    idx <- if (is.null(index_snp)) which.max(logp) else match(index_snp, ids)[1]
    if (is.na(idx)) stop(sprintf("cx_locus: index SNP '%s' is not in the data", index_snp))

    frame   <- match.arg(frame, c("L", "box", "none"))
    dataframe <- list(pos = position, logp = logp, rsid = ids,
                      leadpos = list(position[idx]), leadlogp = list(logp[idx]))
    subplots <- list()

    ## Recombination rate first, so it sits UNDER the points.
    if (!is.null(recomb) && nrow(recomb)) {
        dataframe$recpos  <- as.numeric(recomb[[if ("pos" %in% names(recomb)) "pos" else 1]])
        dataframe$recrate <- as.numeric(recomb[[if ("rate" %in% names(recomb)) "rate" else 2]])
        subplots <- c(subplots, list(list(type = "line", xAxis = "recpos", yAxis = "recrate",
                                          side = "right", fill = "rgb(0,0,255)",
                                          title = "Recombination rate (%)",
                                          setMinY = 0, setMaxY = 100, hideLegend = TRUE)))
    }

    scatter <- list(type = "scatter", xAxis = "pos", yAxis = "logp", side = "left",
                    title = "-log10(P)", shape = "circle")
    if (!is.null(ld)) {
        ldCol <- .cxLocusColumn(data, ld, "ld")
        dataframe$r2bin <- .cxLocusBin(as.numeric(data[[ldCol]])[keep])
        scatter$colorBy <- "r2bin"
        scatter$meta    <- list(color = .cxLocusLDColors)
    } else {
        dataframe$sig <- ifelse(logp >= -log10(pcutoff), "p < cutoff", "Not significant")
        scatter$colorBy <- "sig"
        scatter$meta    <- list(color = list(`p < cutoff` = "rgb(30,144,255)",
                                             `Not significant` = "rgb(128,128,128)"))
    }
    subplots <- c(subplots, list(scatter))

    ## The index SNP as its own one-row series, listed last so it draws on top.
    subplots <- c(subplots, list(list(type = "scatter", xAxis = "leadpos", yAxis = "leadlogp",
                                      side = "left", shape = "diamond",
                                      fill = "rgb(160,32,240)", size = 14, hideLegend = TRUE)))

    tracks <- list(list(name = "GWAS", type = "dataframe", height = 200,
                        dataframe = dataframe,
                        data = list(list(id = "locus", offset = 0, data = subplots))))
    geneTrack <- .cxLocusGeneTrack(genes, highlight)
    if (!is.null(geneTrack)) tracks <- c(tracks, list(geneTrack))

    decorations <- list(line = list(list(y = -log10(pcutoff), color = "rgb(169,169,169)",
                                         width = 1, type = "dashed")))
    if (isTRUE(label_index)) {
        decorations$marker <- list(list(type = "text", text = ids[idx],
                                        x = position[idx], y = logp[idx],
                                        offsetX = 28, offsetY = 24, color = "rgb(0,0,0)"))
    }

    chrLabel <- if (!is.null(chrCol)) as.character(data[[chrCol]][keep][1]) else NULL
    unitName <- if (unit == "auto") {
        span <- diff(range(position)); if (span >= 1e6) "Mb" else if (span >= 1e3) "kb" else "bp"
    } else unit
    axisTitle <- if (is.null(chrLabel)) sprintf("Position (%s)", unitName) else
        sprintf("Chromosome %s (%s)", sub("^chr", "", chrLabel), unitName)

    args <- list(list(tracks = tracks),
                 graphType           = "Genome",
                 featureStaggered    = TRUE,
                 featurePriority     = as.list(c(highlight, "protein_coding")),
                 subtracksMaxDefault = 8,
                 genomeTicks         = 8,
                 genomeTicksUnit     = unitName,
                 genomeTrackPadding  = 0.04,
                 xAxisTitle          = axisTitle,
                 decorations         = decorations)
    if (frame != "none") {
        args$xAxisLineBottomShow <- TRUE
        args$yAxisLineLeftShow   <- TRUE
        if (frame == "box") {
            args$xAxisLineTopShow   <- TRUE
            args$yAxisLineRightShow <- TRUE
        }
    }
    if (!is.null(title)) args$title <- title
    do.call(canvasXpress, c(args, list(...)))
}
