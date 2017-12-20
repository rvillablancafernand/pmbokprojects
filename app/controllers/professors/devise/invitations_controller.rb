class Professors::Devise::InvitationsController < Devise::InvitationsController
	load_and_authorize_resource :professor, only: [:new, :create]
	before_action :configure_invite_params, only: [:create]
	before_action :configure_accept_invitation_params, only: [:update]

	private
	def after_invite_path_for(resource)
		professors_path
	end

	def configure_invite_params
		devise_parameter_sanitizer.permit(:invite, keys: [:name, :surname, :second_surname])
	end

	def configure_accept_invitation_params
		devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name, :surname, :second_surname])
	end
end
