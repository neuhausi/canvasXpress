library(shiny)
library(canvasXpress)
library(DT)


shinyUI(fluidPage(
    tags$head(
    tags$style(HTML("
        #heatmap_wrapper {
            min-height: 450px;
            overflow: visible;
            position: relative;
        }

        /* Let the output element grow beyond its initial height */
        #heatmap_wrapper #genelist_heatmap {
            height: auto !important;
            min-height: 450px;
            overflow: visible !important;
        }
    ")),
    tags$script(HTML("
      $(document).ready(function() {
          // Watch for size changes inside the canvasXpress container
          var ro = new ResizeObserver(function(entries) {
              entries.forEach(function(entry) {
                 var height = entry.target.scrollHeight || entry.target.offsetHeight;
                 $('#heatmap_wrapper').css('min-height', height + 'px');
              });
          });

          // Poll until the canvasXpress element is rendered, then observe
          var interval = setInterval(function() {
              var el = document.getElementById('genelist_heatmap');
              if (el) {
                 ro.observe(el);
                 clearInterval(interval);
              }
          }, 500);
      });
    "))
  ),

  fluidRow(column(
      width = 12,
      div(
          id = "heatmap_wrapper",
          canvasXpress::canvasXpressOutput(
              "genelist_heatmap",
              width  = "100%",
              height = "450px")))),
  fluidRow(column(
      width = 12,
      DTOutput("y"))))
)
