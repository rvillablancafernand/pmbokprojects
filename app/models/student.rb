class Student < ApplicationRecord
	# Include default devise modules. Others available are :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable,
		:trackable, :validatable, :confirmable, :lockable, :timeoutable,
		authentication_keys: [:username],
		email_regexp: Regexp.new('\A[^@\s]+' + ENV['EMAIL_DOMAIN'] + '\z')

	validates_presence_of :first_name, :last_names

	before_validation do
		self.email = "#{self.username}#{ENV['EMAIL_DOMAIN']}"
	end

	def display_name
		(first_name.present? and last_name.present?) ? "#{first_name} #{last_name}" : email
	end

	def display_short_name
		first_name.present? ? first_name : email
	end

	def avatar
		current_provider.present? ? current_provider.avatar_url : 'avatar-unknown.jpg'
	end

	# Devise
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
end
