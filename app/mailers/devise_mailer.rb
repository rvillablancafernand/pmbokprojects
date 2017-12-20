class DeviseMailer < Devise::Mailer
	def confirmation_instructions(record, token, opts={})
		@token = token
		devise_mail(record, :confirmation_instructions, opts)
	end

	def reconfirmation_instructions(record, token, opts={})
		@token = token
		devise_mail(record, :reconfirmation_instructions, opts)
	end

	def confirmation_notification(record, opts={})
		devise_mail(record, :confirmation_notification, opts)
	end

	def reset_password_instructions(record, token, opts={})
		@token = token
		devise_mail(record, :reset_password_instructions, opts)
	end

	def unlock_instructions(record, token, opts={})
		@token = token
		devise_mail(record, :unlock_instructions, opts)
	end

	def email_changed(record, opts={})
		devise_mail(record, :email_changed, opts)
	end

	def password_change(record, opts={})
		devise_mail(record, :password_change, opts)
	end

	def invitation_instructions(record, token, opts={})
		@token = token
		devise_mail(record, :invitation_instructions, opts)
	end
end
