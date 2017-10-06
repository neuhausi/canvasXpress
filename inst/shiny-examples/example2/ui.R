
shinyUI(fluidPage(
				titlePanel("Identification of gene expression profiles in cervical cancer [GSE9750]"),
				mainPanel(
						tabsetPanel(
								tabPanel("ProjectQC",
										fluidRow(
												column(12,
														h4("Explore samples in project"),
														p("Choose a factor to update the visualizations")
												)
										),
										fluidRow(
												column(12,
														selectInput("factor", "Select Factor", colnames(GSE9750$x), selectize=FALSE)
												)
										),
										fluidRow(
												column(6,
														p("Distribution of samples by selected factor")
												),   
												column(6,
														p("Principal Component Analysis. (Colored by selected factor")
												)    
										),
										fluidRow(
												column(6,
														canvasXpressOutput("plot")
												),   
												column(6,
														canvasXpressOutput("plot2")
												)    
										),
										fluidRow(
												column(6,
														uiOutput("selectLevel")
												),
												column(6,
														uiOutput("selectGenes")
												)
										),
										fluidRow(
												column(6,
														p("Volcano plot for genes")
												),
												column(6,
														p("Graph for gene")
												)
										),
										fluidRow(
												column(6,
														canvasXpressOutput("plot3")
												),
												column(6,
														canvasXpressOutput("plot4")
												)
										)   
								)
						)
				)
		))
