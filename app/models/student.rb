class Student < ApplicationRecord
	# Include default devise modules. Others available are :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable,
		:trackable, :validatable, :confirmable, :lockable, :timeoutable,
		authentication_keys: [:username],
		email_regexp: Regexp.new('\A[^@\s]+' + ENV['EMAIL_DOMAIN'] + '\z')

	delegate :can?, :cannot?, to: :ability

	def ability
		@ability ||= StudentAbility.new(self)
	end

	has_and_belongs_to_many :courses

	validates_presence_of :name, :surname, :second_surname

	before_validation do
		self.email = "#{self.username}#{ENV['EMAIL_DOMAIN']}"
	end

	def to_s
		(name.present? and surname.present?) ? "#{name} #{surname}" : email
	end

	def display_short_name
		name.present? ? name : email
	end

	def avatar
		avatar_url.present? ? avatar_url : 'avatar-unknown.jpg'
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
