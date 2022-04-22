# new app heh
# Abstract generator
library(shiny)
library(tidyverse)
library(ggfittext)


paper_fun <- function(Noun_list,Author_list = c("Johnson", "Reginald", "Washington","Chambers")){
  
  nouns = Noun_list
  points = c("we may never truly understand",
             "our vision may have been obscured",
             "our predecessors were incorrect",
             "it all depends",
             "nothing can truly affect this",
             "we may be on the right track",
             "our objectives were too ambitious",
             "we are seeing evidence of this",
             "we are seeing no evidence of this",
             "the technology is not yet advanced enough",
             "new developments will have to wait",
             "seeking alternate paths forward may be required",
             paste("our understanding of ",sample(nouns,1)," is still limited", sep = ""),
             paste(sample(nouns,1)," may be the key", sep = ""),
             paste(sample(nouns,1)," could be the solution", sep = ""),
             paste(sample(nouns,1)," may be generating these problems", sep = ""),
             paste("our reliance on ", sample(nouns,1)," may be affecting this", sep = ""),
             paste("we cannot simply ignore ",sample(nouns,1), sep = ""),
             paste(sample(nouns,1)," may rely more on ", sample(nouns,1)," than previously understood", sep = ""),
             paste(sample(nouns,1)," could be intereacting with ", sample(nouns,1)," in unexpected ways", sep = "")
             )
  
  authors = c(paste("Smith et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Jones et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Jeff et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Hemsworth et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Jafferty et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Wu et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Hiroshimo et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Davis et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Gavin et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Lee et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Samuels et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Daniels et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Margolin et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Neace et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Ortiz et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("McDermott et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("McGovern et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Li et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Yu et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Gared et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Smith et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Jones et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Jeff et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Hemsworth et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Jafferty et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Wu et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Hiroshimo et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Davis et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Gavin et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Lee et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Samuels et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Daniels et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Margolin et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Neace et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Ortiz et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("McDermott et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("McGovern et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Li et al. ", sep = "", sample(1990:2020, 1)," "),
              paste("Yu et al. ", sep = "", sample(1990:2020, 1)," "), 
              paste("Gared et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," "),
              paste(sample(Author_list,1), " et al. ", sep = "", sample(1990:2020, 1)," ")
              )
  
  Argue <- c(
  paste("Along similar lines, ", sample(authors, 1), "argues that ", sample(points, 1),". ", sep = ""),
  paste("There seems to be no compelling reason to argue that ", sample(points, 1),". ", sep = ""), 
  paste("As a rebuttal to this point, it could be argued that ", sample(points, 1),". ", sep = ""), 
  paste("There are ", sample(c("two ","three ","four ")), "main arguments that can be advanced to support ", sample(points, 1),". ", sep = ""), 
  paste("The underlying argument ", sample(c("in favor of ", "against ")), sample(nouns,1), " is that ", sample(points, 1),". ",sep = ""), 
  paste(sample(authors,1)," argue ",sample(c("in favor of ", "against ")), sample(nouns,1), " as follows: ", sample(points, 1),". ", sep = " "))
  
  
  Claim <- c(
  paste("In this paper, I put forward the claim that ", sample(points, 1),". ", sep = ""),
  paste(sample(authors,1), "develops the claim that ", sample(points, 1),". ", sep = ""),
  paste("There is ",sample(c("ample ", "growing "),1), "support for the claim that ", sample(points, 1),". ", sep = ""),
  paste(sample(authors,1), "findings lend support to the claim that ", sample(points, 1),". ", sep = ""),
  paste("Taking a middle-ground position, ", sample(authors,1), "claims that ", sample(points, 1),". ", sep = "")
)
  
  Data <- c(
  paste("The data gathered in ", sample(authors,1), " suggest that ", sample(points,1),". ", sep = ""),
  paste("The data appears to suggest that ", sample(points,1), sep = ""),
  paste("The data yielded by this study provide convincing evidence that ", sample(points,1),". ", sep = ""),
  paste("A closer look at the data indicates that ", sample(points,1),". ", sep = ""),
  paste("The data generated by our experiments on ", sample(nouns,1), " are reported in Table 1. ", sep = ""),
  paste("The aim of this section is to generalize beyond the data and ", sample(points,1),". ", sep = "")
  )
  
  Debate <- c(
  paste(sample(authors,1),"has encouraged debate on ", sample(points,1), ". ",sep = ""),
  paste("There has been an inconclusive debate about whether ", sample(points,1),". ", sep = ""),
  paste("The question of whether ", sample(points,1), " has caused much debate in our profession over the years"),
  paste("Much of the current debate revolves around ", sample(points,1), sep = "")
  )
  
  Discussion <- c(
  paste("In this ", sample(c("section, ","chapter, "),1),"the discussion will point to ", sample(points,1), ". ", sep = ""),
  paste("The foregoing discussion implies that ", sample(points,1), ". ", sep = ""),
  paste("For the sake of discussion, I would like to argue that ",sample(points,1),". ", sep = ""),
  paste("In this study, the question under discussion is ", sample(points,1),". ", sep = ""),
  paste("In this paper, the discussion centers on ", sample(points,1),". ", sep = ""),
  paste(sample(nouns,1),"lies at the heart of the discussion on ", sample(nouns,1),". ", sep = "")
  )

  Evidence <- c(
  paste("The available evidence seems to suggest that ", sample(points,1),". ", sep = ""),
  paste("On the basis of the evidence currently available, it seems fair to suggest that ",sample(points,1),". ", sep = ""),
  paste("There is overwhelming evidence for the notion that ",sample(points,1),". " ,sep = ""),
  paste("Further evidence",sample(c("supporting","against"),1), sample(points,1), " may lie in the findings of ", sample(authors,1),"who state,",sample(points,1),". ", sep = ""),
  paste("These results provide confirmatory evidence that ", sample(points,1),". ", sep = "")
  )
  
  Ground <- c(
  paste("I will now summarize the ground covered in this chapter by ", sample(points,1),". ", sep = ""),
  paste("On logical grounds, there is no compelling reason to argue that ", sample(points,1),". ", sep = ""),
  paste(sample(authors,1),"takes a middle-ground position and argues that ", sample(points,1),". ", sep = ""),
  paste("On these grounds, we can argue that",sample(points,1),". ", sep = ""),
  paste(sample(authors,1),"views are grounded on the assumption that ", sample(points,1),". ", sep = "")
  )
  
  Issue <- c(
  paste("This study is an attempt to address the issue of ", sample(nouns,1),". ", sep = ""),
  paste("In the present study, the issue under scrutiny is whether ", sample(points,1),". ", sep = ""),
  paste("The issue of whether ", sample(points,1), " is clouded by the fact that ", sample(points,1),". ", sep = ""),
  paste("To portray the issue in ", sample(authors,1), "’s terms, ",sample(points,1),". ", sep = ""),
  paste("Given the centrality of this issue, I will now detail how ", sample(points,1),". ", sep = ""),
  paste("This chapter is concerned with the issue of how ", sample(points,1),". ", sep = "")
  )
  Literature <- c(
  paste(sample(authors,1), "is prominent in the literature on how ", sample(points,1),". ", sep = ""),
  paste("There is a rapidly growing literature on ", sample(nouns,1), " which indicates that ", sample(points,1),". ", sep = ""),
  paste("The literature shows no consensus on how", sample(points,1), " which means that ",sample(nouns,1), " could be the reason that ", sample(points,1), ". ", sep = ""),
  paste("The current literature on ", sample(nouns,1)," abounds with examples of ", sample(points,1),". ", sep = "")
  )
  
  # Resume work here
  Premise <- c( 
  paste("The main theoretical premise behind ", sample(nouns,1)," is that ", sample(nouns,1)," may be able to interact with ", sample(nouns,1),". ", sep = ""),
  paste("It may be true that ", sample(nouns,1)," and ",sample(nouns,1), " share an important premise: ", sample(points,1),". ", sep = ""),
  paste("We believe ", sample(nouns,1)," premised on the assumption that ",sample(points,1),". ", sep = ""),
  paste("The basic premises of ", sample(authors,1),"'s theory are predicated on ", sample(nouns,1),", ",sample(nouns,1),", and ",sample(nouns,1),". ", sep = ""),
  paste("The arguments against", sample(authors,1), "’s premise rest on two assumptions: ", sample(points,1),", and ",sample(points,1),". ", sep = "")
  )
  
  Research <- c(
  paste("This study draws on research conducted by ", sample(authors,1),"on ", sample(nouns,1), ". ", sep = ""),
  paste("Although there has been relatively little research on ", sample(nouns,1),". ", sep = ""),
  paste("In the last ", sample(c(1:10),1), "years, studies have provided ample support for the assertion that ", sample(points,1),". ", sep = ""),
  paste("Current research appears to validate the view that ", sample(points,1),". ", sep = ""),
  paste("Research on ", sample(nouns,1), " does not support the view that ",sample(points,1),". ", sep = ""),
  paste("Further research in this area may include ", sample(points,1),". ", sep = ""),
  paste("Evidence for ", sample(points,1), " is borne out by research that shows ", sample(points,1)),". ", sep = "",
  paste("There is insufficient research into" ,sample(points,1), " to draw any firm conclusions about ", sample(nouns,1),". ", sep = "")
  )
  
  View <- c(
  paste("The consensus view seems to be that ", sample(points,1)," when it comes to ", sample(nouns,1), ". ", sep = ""),
  paste(sample(authors,1),"propounds the view that ", sample(points,1),". ", sep = ""),
  paste("Current research on ", sample(nouns,1), sample(c(" does ", " does not "),1), "appear to validate such a view. ", sep = ""),
  paste("There have been dissenters to the view that ",sample(points,1),". ", sep = ""),
  paste("The difference between ",sample(nouns,1),"and ", sample(nouns,1)," is not as clear-cut as popular views might suggest. ", sep = ""),
  paste("The view that ", sample(points,1),"is in line with our position that ",sample(points,1),". ", sep = ""),
  paste("I am not alone in my view that ", sample(points,1),". ", sep = ""),
  paste(sample(authors,1),"puts forward the view that ",sample(points,1),". ", sep = ""),
  paste(sample(authors,1),"may have an important position regarding ", sample(nouns,1),". ", sep = ""),
  paste(sample(authors,1),"s views rest on the assumption that ",sample(points,1),". ", sep = "")
  )
  
  
  test_text <- paste(sample(View,1),sample(View,1),sample(View,1),sample(View,1),sample(View,1))
  
  paper = paste(  
    sample(Claim, 1),
    sample(Debate, 1),
    sample(Data, 1),
    sample(Evidence, 1),
    sample(Issue, 1),
    sample(Ground, 1),
    sample(Literature, 1),
    sample(Argue, 1),
    sample(Discussion, 1),
    sample(Claim, 1),
    sample(Debate, 1),
    sample(Data, 1),
    sample(Evidence, 1),
    sample(Issue, 1),
    sample(Ground, 1),
    sample(Literature, 1),
    sample(Argue, 1),
    sample(Discussion, 1),sep = " ")
  
  return(paper)
  
}
paper_fun(Noun_list = c("Toads","Frogs","Salamanders", "Mushrooms", "Napkins", "viruses",
                        "pests","slices","concepts","disease","studies","shells")
            )














