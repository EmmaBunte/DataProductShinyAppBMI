shinyUI(
    pageWithSidebar(
        # Applicsation title
        headerPanel("BMI Calculator"),
        
        sidebarPanel(
            numericInput('weight','Weight kg', 70,min=0,max=250,step=1),
            numericInput('length','Length cm', 165,min=0,max=250,step=1),
            submitButton('Submit')
            ),
        
        mainPanel(
            h3('Results of prediction'),
            h4('Your entered weight'),
            verbatimTextOutput("inputValue_weight"),
            h4('Your entered length'),
            verbatimTextOutput("inputValue_length"),
            h4('Which resulted in a predicted BMI of '),
            verbatimTextOutput("prediction"),
            h4('The perfect weight for your length is between'),
            verbatimTextOutput("prediction2"),
            verbatimTextOutput("prediction3")
            )
        )
)