# load in original dataset
bounced_emails <- read.csv(file = 'invalid_emails.csv', check.names = F, stringsAsFactors = F)

# create a series based on the email address column of original dataframe
email_addresses <- bounced_emails$Email

# check that the previously created variable indeed contains the intended info
email_addresses

# create a dataframe from the Emails column to send to API
email_addresses_df <- data.frame(bounced_emails$Email)


