# ----------------------------------
# NEW CX JS Library Version Setup
# ----------------------------------

# NOTE: Assumes the new CanvasXpress JS version is XX.YY


# Increment the DESCRIPTION version to match and have a dev designation:
#     Version: 1.XX.YY.9000


# Update the JS version number to XX.YY in:
#    inst/htmlwidgets/canvasXpress.yaml


# Replace the following files with the released JS files for the version
#     inst/htmlwidgets/lib/canvasXpresscanvasXpress.css
#     inst/htmlwidgets/lib/canvasXpresscanvasXpress.min.js


# Run the following to put the proper version of the function file into the package
webFile <- readr::read_lines(file = "https://www.canvasxpress.org/data/cX-function.R")
readr::write_lines(webFile, file = "inst/ui-examples/cX-function.R.gz")
readr::write_lines(webFile, file = "misc/cX-function.R") # for our ease of use in determining changes
