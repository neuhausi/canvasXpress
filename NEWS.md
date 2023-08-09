--- 
  title: "R Package NEWS" 
---


This file details changes to the canvasXpress R package only!

For detailed information on changes to the stand-alone JavaScript CanvasXpress library see the 
<a href="https://www.canvasxpress.org"> main CanvasXpress website</a>.


---

## v1.45.4
* Updated CanvasXpress JS and CSS libraries to v45.4
* Updated ggplot conversion functionality to expand functionality and fix bugs

## v1.43.7
* Updated CanvasXpress JS and CSS libraries to v43.7
* Updated ggplot conversion functionality to allow configuration changes

## v1.42.9
* Updated CanvasXpress JS and CSS libraries to v42.9
* Updated htmlwidgets functionality to avoid a resizing issue in shiny applications
* Updated ggplot conversion functionality to support new capabilities in cxplot
* Various minor bugfixes throughout

## v1.40.6-2
* Updated a test to avoid errors with the release of HTMLwidgets 1.6 (Carson's PR)

## v1.40.6-1
* Updated a test to avoid an error in debian due to changes in system messages for URL checking.

## v1.40.6
* Updated CanvasXpress JS and CSS libraries to v40.6

## v1.40.0
* Updated CanvasXpress JS and CSS libraries to v40.0

## v1.39.8
* Updated CanvasXpress JS and CSS libraries to v39.8

## v1.37.4
* Updated CanvasXpress JS and CSS libraries to v37.4

## v1.37.0-1
* Patch update for CRAN platforms without pandoc installed - resolves failing tests and examples

## v1.37.0
* Updated CanvasXpress JS and CSS libraries to v37.0
* Added support for Genome Charts
* Added a method to pass straight JSON through to the CX charts JS from R
* Added HTML page export capability for easier cross-platform live chart sharing

## v1.35.0
* Updated CanvasXpress JS and CSS libraries to v35.0
* robustified tests for online datasets
* Added support for Gantt charts

## v1.32.9
* Updated CanvasXpress JS and CSS libraries to v32.9
* Added support for new chart types: Meter, Fish
* Updated htmlwidget handling of canvasXpress objects
* Added back updated shiny example3
* Updated testthat paradigm to use setup/teardown files
* Fixed failing tests and increased robustness for non-interactive platforms like CRAN
* Added safety checking for url-dependent tests if canvasxpress.org is unreachable

## v1.29.6  
* Updated CanvasXpress JavaScript and CSS libraries to v29.6  
* Package data moved to canvasXpress.data to reduce package size  
* Minor internal reorganization to accommodate automated testing  
* Documentation and Test updates  

## v1.27.6-1
* For tests relying on internet resources they will only run interactively

## v1.27.6
* Updated CanvasXpress JavaScript and CSS libraries to v27.6
* Updated tests and documentation references to match website rewrite and url changes
* Updated shiny examples, removed example3
* preparation for canvasXpress.data package split

## v1.25.6
* Updated CanvasXpress JavaScript and CSS libraries to v25.6
* Extended R package handling of Gantt charts and network charts to match CX JS updates

## v1.24.8
* Updated CanvasXpress JavaScript and CSS libraries to v24.8

## v1.24.5
* Updated CanvasXpress JavaScript and CSS libraries to v24.5
* Extended R package handling of network chart inputs to match CX JS updates

## v1.23.9
* Updated CanvasXpress JavaScript and CSS libraries to v23.9
* Bugfixes for changes in precalculated SD in bar charts

## v1.23.6
* Updated CanvasXpress JavaScript and CSS libraries to v23.6
* Resolved issue with DT 0.5 compatibility
* Support for precalculated SD in bar charts added to R package

## v1.23.3
* Updated CanvasXpress JavaScript and CSS libraries to v23.3

## v1.22.9
* Updated CanvasXpress JavaScript and CSS libraries to v22.9

## v1.22.6
* Updated CanvasXpress JavaScript and CSS libraries to v22.6
* Tested updated and expanded to match new CX functionality

## v1.21.6
* Updated CanvasXpress JavaScript and CSS libraries to v21.6

## v1.20.5
* Updated CanvasXpress JavaScript and CSS libraries to v20.5
* Tests updated and expanded to match new CX functionality

## v1.20.1
* Updated CanvasXpress JavaScript and CSS libraries to v20.1

## v1.19.0
* Updated CanvasXpress JavaScript and CSS libraries to v19.0

## v1.18.8
* Updated CanvasXpress JavaScript and CSS libraries to v18.8

## v1.18.5
* Updated CanvasXpress JavaScript and CSS libraries to v18.5

## v1.18.3
* Updated CanvasXpress JavaScript and CSS libraries to v18.3

## v1.18.2
* Bugfix for destruction of htmlwidget

## v1.18.1
* Updated CanvasXpress JavaScript and CSS libraries to v18.1
* Added destroy functionality for shiny applications the require removal of canvasXpress charts

## v1.17.9
* Updated CanvasXpress JavaScript and CSS libraries to v17.9

## v1.17.5
* Updated CanvasXpress JavaScript and CSS libraries to v17.5

## v1.17.4 - _Major Release_
* Updated CanvasXpress JavaScript and CSS libraries to v17.4
* Functionality improved and streamlined to cover the full canvasXpress library functionality in a backwards-compatible way. (Genome plots will be supported at a future date)
* Full automated test suite matching the examples from the main website
* Updated documentation and examples
* Version updated to 1 from 0 - the second and third parts of the version number still follow the canvasXpress JS library version so that it is clear to users which version of the JS library is being used.

---

## v0.17.2
* Updated CanvasXpress JavaScript and CSS libraries to v17.2

## v0.16.7
* Updated CanvasXpress JavaScript and CSS libraries to v16.7

## v0.16.6
* Updated CanvasXpress JavaScript and CSS libraries to v16.6

## v0.16.2
* Updated CanvasXpress JavaScript and CSS libraries to v16.2
* Added dendrogram functionality compatibility (Newick tree format)
* Added precalculated boxplot data functionality (5-number summary + outliers)
* Updated documentation for the above additions
* Added additional vignette with examples and tips on using CanvasXpress with R

## v0.15.5
* Updated CanvasXpress JavaScript and CSS libraries to v15.5

## v0.15.2
* Updated CanvasXpress JavaScript and CSS libraries to v15.2

## v0.14.7
* Updated CanvasXpress JavaScript and CSS libraries to v14.7

## v0.14.3
* Updated CanvasXpress JavaScript and CSS libraries to v14.3

## v0.14.0
* Updated CanvasXpress JavaScript and CSS libraries to v14.0
* Updated TravisCI parameters


## v0.13.8
* Updated CanvasXpress JavaScript and CSS libraries to v13.8
* Added the CDNJ tag to the README file


## v0.13.7
* Updated CanvasXpress JavaScript and CSS libraries to v13.7
* Package Version Updated - will generally follow the JS library version for 
clarity


## v0.13.5
* Updated package in readiness for CRAN release based on CanvasXpress v13.5
    * Testing Added
    * Documentation Added
    * Rearrangement of files
    * CRAN cleanup and all checks passing with no notes/warnings/errors
    * Shiny examples streamlined and put into `cxShinyExamples` function
