library(jsonlite)
library(httr)
gym=function(api1,api_key1,i){
  client_id <- api1
  client_secret <- api_key1
  res <- POST("https://api.yelp.com/oauth2/token",
              body = list(grant_type = "client_credentials",
                          client_id = client_id,
                          client_secret = client_secret))

  token <- content(res)$access_token

  yelp <- "https://api.yelp.com"
  term <- "gym"
  location <- i
  categories <- NULL
  limit <- 50
  radius <- 8000
  url <- modify_url(yelp, path = c("v3", "businesses", "search"),
                    query = list(term = term, location = location,
                                 limit = limit,
                                 radius = radius))
  res <- GET(url, add_headers('Authorization' = paste("bearer", client_secret)))

  results <- content(res)

  yelp_httr_parse <- function(x) {

    parse_list <- list(
      name = x$name,
      rating = x$rating,

      address1 = x$location$address1
    )

    parse_list <- lapply(parse_list, FUN = function(x) ifelse(is.null(x), "", x))

    df <- data.frame(
      name=parse_list$name,
      rating = parse_list$rating,
      address1 = parse_list$address1
    )
    df
  }

  results_list <- lapply(results$businesses, FUN = yelp_httr_parse)

 GYM <- do.call("rbind", results_list)
 GYM
}
