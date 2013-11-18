# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Ecs::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'hunnafresh@gmail.com',
  password:             'triple666',
  authentication:       :login,
  enable_starttls_auto: true  
}
