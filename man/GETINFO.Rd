\name{GETINFO}
\alias{GETINFO}

\title{GetINFO

}
\description{
This function allows you retrieve all country's Econ information from FRED(this function requires your own api key from FRED)
}
\usage{
GETINFO(FRED_APIkey,search_text,realtime_start,realtime_end,limit)
}

\details{
FRED_APIKEY is your own API key from FRED, search_text is the econ information you want to retrieve from FRED
}

\author{
Jiatong Li
}

\examples{
GETINFO(FRED_APIkey="43feed24d714332ac6ad5110919b6556",
       realtime_start="2018-01-01",
       realtime_end="2020-09-01",
       search_text="GDP+Japan",
       limit="50")}


