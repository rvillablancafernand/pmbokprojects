class Professors::InvitationsController < Devise::InvitationsController
	load_and_authorize_resource :professor, only: [:new, :create]

	private
	def after_invite_path_for(resource)
		professors_path
	end
end
