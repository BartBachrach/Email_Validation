library(httr)
library(dplyr)

# load in original dataset
bounced_emails <- read.csv(file = 'invalid_emails.csv', check.names = F, stringsAsFactors = F)

# create a series based on the email address column of original dataframe
email_addresses <- bounced_emails$Email

# check that the previously created variable indeed contains the intended info
email_addresses

# create a dataframe from the Emails column to send to API
email_addresses_df <- data.frame(bounced_emails$Email)

# create list of 100 emails for R&D of this code
top_emails <- email_addresses_df %>% slice(1:100)

# create a list of 10 to verify to stay within free trial limits
top_ten_emails <- email_addresses_df %>% slice(1:10)

# generating POST request
api_url = "https://api.clearout.io/v2/email_verify/bulk"
emails_body = top_ten_emails
api_token = "api token"

POST(url = api_url, api_token, body = emails_body, encode = "json")
