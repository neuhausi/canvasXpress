shinyUI(fluidPage(
    title = "Shiny Example 2",
    fluidRow(
        style = "background-color:#f2f2f2;",
        column(width = 12,
               align = "center",
               tags$h3(tags$strong("Identification of Gene Expression Profiles"),
                       tags$br(),
                       tags$em("in cervical cancer [GSE9750]")),
               tags$br())),
    fluidRow(
        style = "background-color:#f2f2f2;",
        column(width = 4,
               offset = 4,
               style = "z-index:11000",
               selectizeInput(
                   inputId  = "factorSel",
                   label    = "Primary Plot Factor:",
                   choices  = colnames(g_GSE9750$x),
                   selected = colnames(g_GSE9750$x)[3],
                   multiple = FALSE))
    ),
    fluidRow(
        column(width = 6,
               htmlOutput("distribution_plot")),
        column(width = 6,
               htmlOutput("pca_plot"))
    ),
    fluidRow(
        column(width = 6,
               selectizeInput(inputId  = "levelSel",
                              label    = HTML("Level:&nbsp;"),
                              width    = "100%",
                              choices  = NULL,
                              multiple = FALSE),
               htmlOutput("volcano_plot")),
        column(width = 6,
               selectizeInput(inputId  = "genesSel",
                              label    = HTML("Gene(s):&nbsp;"),
                              width    = "100%",
                              choices  = g_geneChoices,
                              selected = g_geneChoices[1:2],
                              multiple = TRUE),
               htmlOutput("genes_plot"))
    )
))
