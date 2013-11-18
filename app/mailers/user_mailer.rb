class UserMailer < ActionMailer::Base
  default from: 'from@example.com'

  def welcome_email(user)
    @user = user
    @url  = 'http://rails-ecs.herokuapp.com'
    mail(
      to: @user.email,
      subject: 'Welcome to Engineered Corrusion Solutions 2014'

      )
  end
end
