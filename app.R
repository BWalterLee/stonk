#
# This is a Shiny web application. You can run the application by clicking
# the 'Run App' button above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(tidyverse)
library(ggfittext)


stonk_fun <- function(){
    
    rando <- c("Tesla","Bed Bath and Beyond", "Microsoft", "Apple", "GM", "GE", "Gamestop", "AMC", 
                   "Blackberry", "Exxon", "Bumble", "Petco", "Roblox", 
                   "Shopify", "Amazon", "Square", "Weed Stocks", "The New York Times", 
               "Airbnb", "Disney", "Google", "Peloton", "DoorDash", "IBM", "Nvidia",
               "Goldman Sachs", "the big guys", "the little guys", "the Big Banks", 
               "Elon")
    
    times <- c("last quarter", "the Dot Com bubble", "pre-Covid",
               "the IPO", "last year", "the previous earnings report" , "that massive buyback",
               "my divorce", "the 80's", "the 90's", "the Great Recession")
    
    lead_list <- c("Hey now, ",
                   "Where this thing is going, ",
                   "I haven't seen this in years, ",
                   "Takeaway: ",
                   "Purpose built, mission driven: ",
                   "It's cyclical not secular, ",
                   "Really robust top line, ",
                   "Edge computing at the forefront, ",
                   "This would look better triple levered, ",
                   "Don't tell my wife, but ",
                   "Don't tell my husband, but ",
                   "Couldn't be more sure, ",
                   "Seriously undervalued, ",
                   "Market's looking shaky, ",
                   "I'm a little nervous, but ",
                   paste("Bringing it back to ", sample(times),", ", sep = ""),
                   "A little here, a little there, ",
                   paste("This is probably bigger than ", sample(rando),", ", sep = ""),
                   "Risking my kid's college fund, but ",
                   "Lesson number one: "
                   )
    
    turn_list <- c("the fundamentals are just prime. ",
                   "where's the downside? ",
                   "I'm gonna want to get in and get out FAST! ",
                   "my accountant is gonna have a field Day! ",
                   "you just can't let an opportunity like this slide by. ",
                   "it's just the WOW factor!!! ",
                   "why don't they bring it offshore? ",
                   "it's a cash cow ready to be milked and bottled. ",
                   "they're tapping into digital finance interoperability. ",
                   "I'm into taking a risk on this one. ",
                   "The Street just isn't in the know. ",
                   "severely undervalued. ",
                   "and the volatility is overrated. ",
                   paste("makes ", sample(rando), " look like ", sample(rando),"! ", sep = ""),
                   "the Roaring 20's are back! ",
                   "it's 2008 all over again. ",
                   paste("been looking great since ",sample(times),". ", sep = "")
                   
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
                   "Driven by AI/ML/IoT/NLP tailwinds.",
                   "Prime.",
                   "Opposite of a dog.", 
                   "Fundamentals aren't everything.",
                   "It's a long play, for sure.",
                   "Can't hop off this rollercoaster!",
                   paste("I can't take another", sample(rando), "situation."),
                   paste("Really brings me back to ", sample(times),".", sep = ""),
                   "Hold!",
                   "BUY BUY BUY!",
                   "BUY SELL BUY!",
                   "Don't take no for an answer!",
                   "Not today!",
                   "Break em up!",
                   "Never sell!",
                   "How much is too much?",
                   "Buy the dip!"
                
                   
                   )
    
    
    comment = paste(  
        sample(lead_list,1),
        sample(turn_list,1),
        sample(quip_list,1), sep = "")
    
    return(comment)
    
}

# Define UI for application that draws a histogram
ui <- fluidPage(tags$style("#stonktext {font-size:32px;
               color:black;
               display:bold; }"),
    
    # Application title
    titlePanel("So u bought stonk. Tell us why. "),
    
    # Sidebar with a slider input for number of bins 
    sidebarLayout(
        actionButton("goButton", "PROFIT"),
        p("What did you know?")),
    
   
    mainPanel(
           textOutput("stonktext"), width = 12)
    
        
     )
    

# Define server logic required to draw a histogram
server <- function(input, output) {
    
    output$stonktext <- eventReactive(input$goButton, {
        stonk_fun()
    })
    
}

# Run the application 
shinyApp(ui = ui, server = server)
