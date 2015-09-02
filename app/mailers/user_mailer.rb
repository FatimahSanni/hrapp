class UserMailer < ApplicationMailer
	default from: "info.hr@eyefoundationhospital.com"

	def welcome_email(user)
		@user = user
		@url = "https://hr-base.herokuapp.com/users/sign_in"
		mail(to: @user.email, subject: "Your Staff Account has just been created by the HR")
	end
end
