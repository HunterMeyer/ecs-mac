# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Ecs::Application.initialize!
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  address:              'smtp.mandrillapp.com',
  port:                 587,
  domain:               'gmail.com',
  user_name:            'huntermeyer@live.com',
  password:             'ER3kQ5R01FxK0hgE4X3hFw',
  authentication:       :login,
  enable_starttls_auto: true  
}
