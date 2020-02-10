library(shiny)
library(canvasXpress)


shinyUI(pageWithSidebar(
    headerPanel("Scatter Plot"),
    sidebarPanel(
        selectizeInput(
            "axisXSel",
            label    = "Select X-Axis Variable",
            choices  = names(iris)[1:4],
            selected = names(iris)[[1]],
            multiple = FALSE
        ),
        selectizeInput(
            "axisYSel",
            label    = "Select Y-Axis Variable",
            choices  = names(iris)[1:4],
            selected = names(iris)[[2]],
            multiple = FALSE
        ),
        selectizeInput(
            "colorBySel",
            label    = "Select Variable for Coloring",
            choices  = c("", names(iris)[1:4]),
            selected = "",
            multiple = FALSE
        ),
        selectizeInput(
            "shapeBySel",
            label    = "Select Variable for Shaping",
            choices  = c("", names(iris)[1:4]),
            selected = "",
            multiple = FALSE
        )
    ),
    mainPanel(
        canvasXpressOutput("plot", width = "100%", height = '80vh')
    )
))
