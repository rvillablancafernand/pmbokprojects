class Students::RegistrationsController < Devise::RegistrationsController
	protected
	def sign_up(resource_name, resource)
		set_flash_message :alert, :signed_up_but_unconfirmed if !resource.confirmed?
		super
	end
end
