class CustomDeviseController < ApplicationController
	before_action :configure_permitted_parameters

	protected
	def after_sign_in_path_for(resource)
		stored_location_for(resource) || root_path
	end

	def configure_permitted_parameters
		if resource_name == :student
			devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :surname, :second_surname, :remember_me])
			devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :surname, :second_surname, :avatar_url, :remember_me])
		elsif resource_name == :professor
			devise_parameter_sanitizer.permit(:invite, keys: [:name, :surname, :second_surname])
			devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name, :surname, :second_surname, :avatar_url])
			devise_parameter_sanitizer.permit(:account_update, keys: [:name, :surname, :second_surname, :avatar_url, :remember_me])
		end
	end
end
