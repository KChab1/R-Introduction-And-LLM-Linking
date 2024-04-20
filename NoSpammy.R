install.packages("httr")
install.packages("jsonlite")

library(httr)
library(jsonlite)


api_key <- "AIzaSyAVAuWVYiN_UIwIwWK7U7FsV-UrB7bCt1U"

models <- GET(
  url = "https://generativelanguage.googleapis.com/v1beta2/models", 
  query = list(key = api_key))

lapply(content(models)$models, function(model) c(description = model$description,
                                                 displayName = model$displayName,
                                                 name = model$name,
                                                 method = model$supportedGenerationMethods[1]))

find_model <- function(method, api_key=Sys.getenv("No Spammy")) {
  
  if(nchar(api_key)<1) {
    api_key <- readline("Paste your API key here: ")
    Sys.setenv(PALM_API_KEY = api_key)
  }
  
  response <- GET(
    url = "https://generativelanguage.googleapis.com/v1beta2/models", 
    query = list(key = api_key))
  
  if(status_code(response)>200) {
    stop(content(response)$error$message)
  }
  
  find_model <- lapply(content(response)$models, function(x) {
    if (method %in% x$supportedGenerationMethods) {
      return(x$name)
    }
  })
  
  modelName <- unlist(find_model[!sapply(find_model, is.null)])[1]
  
  return(modelName)
  
}

# Function
bard <- function(prompt, 
                 temperature=0.7,
                 max_output_tokens=1024,
                 candidate_count=1,
                 api_key=Sys.getenv("PALM_API_KEY"),
                 model = "auto") {
  
  if(nchar(api_key)<1) {
    api_key <- readline("Paste your API key here: ")
    Sys.setenv(PALM_API_KEY = api_key)
  }
  
  if(tolower(model)=="auto") {
    model <- find_model("generateText")
  }
  model_query <- paste0(model, ":generateText")
  
  response <- POST(
    url = paste0("https://generativelanguage.googleapis.com/v1beta2/", model_query),
    query = list(key = api_key),
    content_type_json(),
    encode = "json",
    body = list(
      prompt = list(
        text = prompt
      ),
      temperature=temperature, 
      maxOutputTokens=max_output_tokens,
      candidateCount=candidate_count
    )
  )
  
  if(status_code(response)>200) {
    stop(content(response)$error$message)
  }
  
  candidates <- content(response)$candidates
  outputs <- unlist(lapply(candidates, function(candidate) candidate$output))
  
  return(outputs)
  
}

prompt <- "R code to remove duplicates using dplyr."
cat(bard(prompt))

