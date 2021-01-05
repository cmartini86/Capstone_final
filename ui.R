### Data Science Capstone : Course Project
### ui.R file for the Shiny app
### Github repo : https://github.com/sriharshams/coursera-data-science-capstone
suppressWarnings(library(shiny))
suppressWarnings(library(markdown))
shinyUI(navbarPage("Capstone: Course Project",
                   tabPanel("Predict the Next Word",
                            HTML("<strong>Author: Chris M</strong>"),
                            br(),
                            HTML("<strong>Date: 1/04/2021</strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Start typing in a sentence to display the next word prediction"),
                                textInput("inputString", "Enter here",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Predicted Next Word"),
                                verbatimTextOutput("prediction"),
                                strong("Sentence Input:"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(197, 239, 247, 1); color: blue;}'), 
                                textOutput('text1'),
                                br(),
                                strong("Note:"),
                                tags$style(type='text/css', '#text2 {background-color: rgba(197, 239, 247, 1); color: black;}'),
                                textOutput('text2')
                              )
                            )
                            
                   )
)
)