class UserMailer < ActionMailer::Base
  default from: 'ECS <no-reply@engineeredcorrusionsolutions.com>'

  def welcome_email(user)
    @user = user
    email_with_name = "#{@user.first_name} #{@user.last_name} <#{@user.email}>"
    @url  = 'http://ecs-mac.herokuapp.com'
    mail(
      to: email_with_name,
      subject: 'Welcome to Engineered Corrusion Solutions 2014'
      )
  end
end
