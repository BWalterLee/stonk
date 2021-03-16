#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)


stonk_fun <- function(){
    
    lead_list <- c("Hey now, ",
                   "Things are looking like, ",
                   "Where this thing is going, ",
                   "I haven't seen this in years, ",
                   "Takeaway: ",
                   "Purpose built, mission driven: ",
                   "It's cyclical not secular, ",
                   "Really robust top line, ",
                   "Edge computing at the forefront, ",
                   "This would look better triple levered, ",
                   "Don't tell my wife, ")
    
    turn_list <- c("the fundamentals are just prime. ",
                   "where's the downside? ",
                   "I'm gonna want to get in and get out FAST! ",
                   "my accountant is gonna have a Field Day! ",
                   "you just can't let an opportunity like this slide by. ",
                   "it's just the WOW factor!!! ",
                   "why don't they bring it offshore? ",
                   "cash cow ready to be milked and bottled. ",
                   "tapping into digital finance interoperability. ",
                   "but I'm into taking a risk on this one. "
                   
    )
    
    quip_list <- c("Take it or leave it!",
                   "Hot mama!",
                   "Not even a question.",
                   "This is only the beginning!",
                   "What a monster.",
                   "Good Morning!",
                   "Good Night!",
                   "I'll be keeping my eyes on this one.",
                   "PROFIT!",
                   "AMAZING!",
                   "Where could it be going?",
                   "This is gonna PAY!",
                   "This one's a squirter.",
                   "Worse than a waiter on a Wednesday",
                   "Sweeter than the OJ on a Sunday morning.",
                   "I lean more rule of 50 than rule of 40.",
                   "Driven by AI/ML/IoT/NLP tailwinds."
    )
    
    comment = paste(  
        sample(lead_list,1),
        sample(turn_list,1),
        sample(quip_list,1), sep = "")
    
    return(comment)
}

# Define UI for application that draws a histogram
ui <- fluidPage(
    
    # Application title
    titlePanel("So u bought stonk. Tell us why. "),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        actionButton("goButton", "PROFIT"),
        p("What did you know?")),
    
    mainPanel(
        verbatimTextOutput("stonktext"), width = 14))

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$stonktext <- eventReactive(input$goButton, {
        stonk_fun()
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)