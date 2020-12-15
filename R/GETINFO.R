library(jsonlite)

FRED_APIkey="43feed24d714332ac6ad5110919b6556"
realtime_start="2018-01-01"
realtime_end="2020-09-01"
search_text="GDP+China"
limit="50"
GETINFO=function(FRED_APIkey,search_text,realtime_start,realtime_end,limit){
  URL= "https://api.stlouisfed.org/fred/series/search"

  parameters = paste(
    "?search_text=",search_text,
    "&api_key=",FRED_APIkey,
    "&file_type=json",
    "&realtime_start=",realtime_start,
    "&realtime_end=",realtime_end,
    "&limit=",limit,
    sep="")
  PATH=paste0(URL,parameters)
  initialquery=fromJSON(PATH)
  attach(initialquery)
  df= initialquery$seriess
  df=df[c("title","units","popularity","notes")]
  return(df)


}

