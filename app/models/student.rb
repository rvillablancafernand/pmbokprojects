class Student < ApplicationRecord
	# Include default devise modules. Others available are :omniauthable, :validatable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :confirmable, :lockable, :timeoutable, authentication_keys: [:username], confirmation_keys: [:username], reset_password_keys: [:username], unlock_keys: [:username]

	validates_presence_of :username, :name, :surname, :second_surname
	validates_uniqueness_of :username

	has_many :courses_students
	has_many :courses, through: :courses_students
	has_many :assignments_students
	has_many :assignments, through: :assignments_students
	has_many :process_objects, through: :assignments

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

	def assignments_for(course)
		assignments.where(course: course).uniq
	end

	def process_objects_names
		process_objects.map{|i| i.process_object.to_s}.join(', ')
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
