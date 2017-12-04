class Professor < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :omniauthable
	devise :database_authenticatable, :trackable, :timeoutable, :lockable, :registerable, :validatable, :recoverable, :rememberable, :invitable

	def admin?
		administrator
	end

	def avatar
		avatar_url.present? ? avatar_url : 'avatar-unknown.jpg'
	end

	def display_name
		(name.present? and surname.present?) ? "#{name} #{surname}" : email
	end

	def display_short_name
		name.present? ? name : email
	end

	def display_full_name
		(name.present? and surname.present?) ? "#{name} #{surname}" : email
	end

	def send_reconfirmation_instructions
		@reconfirmation_required = false

		unless @skip_confirmation_notification
			unless @raw_confirmation_token
				generate_confirmation_token!
			end

			opts = pending_reconfirmation? ? { to: unconfirmed_email } : { }
			send_devise_notification(:reconfirmation_instructions, @raw_confirmation_token, opts)
		end
	end

	def after_confirmation
		opts = { to: email }
		send_devise_notification(:email_changed, opts)
	end

	def send_reset_password_instructions
		super if invitation_token.nil?
	end
end
