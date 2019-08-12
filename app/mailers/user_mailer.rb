class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

 def welcome_email
   @user = params[:user]
   @url  = @user.result
   mail(to: @user.email, subject: 'Welcome to My Awesome Site')
 end
end
