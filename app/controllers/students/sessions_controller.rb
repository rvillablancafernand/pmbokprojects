class Students::SessionsController < Devise::SessionsController
	protected
	def sign_in(resource_name, resource)
		set_flash_message :alert, :signed_in_but_unconfirmed if !resource.confirmed?
		super
	end
end
