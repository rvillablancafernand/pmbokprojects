class Student < ApplicationRecord
	# Include default devise modules. Others available are :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable, :timeoutable, email_regexp: Regexp.new('\A[^@\s]+' + ENV['EMAIL_DOMAIN'] + '\z'), authentication_keys: [:username], confirmation_keys: [:username], reset_password_keys: [:username]

	validates_presence_of :name, :surname, :second_surname

	has_and_belongs_to_many :assignments
	has_and_belongs_to_many :courses

	delegate :can?, :cannot?, to: :ability
	def ability
		@ability = StudentAbility.new(self)
	end

	def to_s
		full_name = [name, surname, second_surname]
		full_name.any?(&:present?) ? full_name.join(' ').strip : email
	end

	def short_name
		name.present? ? name : email
	end

	def avatar
		avatar_url.present? ? avatar_url : 'avatar-unknown.jpg'
	end

	# Username
	validate :validate_username

	before_validation do
		self.email = "#{self.username}#{ENV['EMAIL_DOMAIN']}"
	end

	def validate_username
		if Student.where(email: "#{self.username}#{ENV['EMAIL_DOMAIN']}").exists?
			errors.add(:username, :exists)
		end
	end

	def username=(username)
		@username = username
	end

	def username
		@username || self.email.split(/@/).first
	end

	def self.find_first_by_auth_conditions(warden_conditions)
		conditions = warden_conditions.dup
		conditions[:email] = "#{conditions[:username]}#{ENV['EMAIL_DOMAIN']}"
		conditions.delete(:username)
		where(conditions.to_h).first
	end
end
