class CustomDeviseController < ApplicationController
	self.responder = ActionController::Responder



	# def configure_permitted_parameters
	# 	if resource_name == :student
	# 		devise_parameter_sanitizer.permit(:new_confirmation, keys: [:username])
	# end
end
