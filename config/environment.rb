# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Ecs::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            #email_address,
  password:             #password,
  authentication:       :login,
  enable_starttls_auto: true  
}
