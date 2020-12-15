\name{sports}
\alias{sports}
\title{Get information(name, address, rates) of sport shops from yelp using your own yelp api key

}
\description{
By typing the city name you want to check and your yelp api key, the function will give you all information (address,rate, etc) of 50 sport shops in that city.
}
\usage{
sports(api1="your client id ",api_key1= "your client_secret",i="City,State")
}

\author{
Jiatong Li
}

\examples{
sports(api1="q-f2lLVGZkys5AVkVPWsuQ",api_key1 =  "tLcN4rX8BzXZTSE5fYKHntHgSbjHilyGQV8VoXq0zGgiwP7RM8rS0PCOuRyRpn6UkMsEE9gnXWqEs2V32IreXfwVjao7iiAgKeJQ85u2n_mbuZn3-Tuq3R7qs4CPX3Yx",i="San Jose,CA")
}

