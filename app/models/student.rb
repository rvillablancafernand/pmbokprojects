class Student < ApplicationRecord
	# Include default devise modules. Others available are :omniauthable, :validatable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :confirmable, :lockable, :timeoutable, authentication_keys: [:username], confirmation_keys: [:username], reset_password_keys: [:username], unlock_keys: [:username]

	validates_presence_of :username, :name, :surname, :second_surname
	validates_uniqueness_of :username

	has_and_belongs_to_many :assignments
	has_many :courses_students
	has_many :courses, through: :courses_students
	has_many :assignment_process_objects

	set_attrs :id, :name, :surname, :second_surname, :email, :courses_count, :sign_in_count, :current_sign_in_at, :last_sign_in_at

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

	def process_objects
		assignment_process_objects.map{|i| i.process_object.to_s}.join(', ')
	end

	def accept_link
	end

	# Username
	def email
		"#{username}#{ENV['EMAIL_DOMAIN']}"
	end

	def email_required?
		false
	end

	def email_changed?
		false
	end
end
