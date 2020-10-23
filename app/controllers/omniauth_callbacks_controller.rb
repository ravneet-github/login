class OmniauthCallbacksController < Devise::OmniauthCallbacksController

	def facebook
		user = User.from_omniauth(request.env["omniauth.auth"])
		if user.persisted?
			sign_in_and_redirect user, notice: "Signed in!"
		else
			session["devise.user_attributes"]  = user.user_attributes
			redirect_to new_user_registration_path
		end
	end
end
