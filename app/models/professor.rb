class Professor < ApplicationRecord
	# Include default devise modules. Others available are:
	# :confirmable, :omniauthable
	devise :database_authenticatable, :trackable, :timeoutable, :lockable, :registerable, :validatable, :recoverable, :rememberable, :invitable

	delegate :can?, :cannot?, to: :ability

	has_many :courses
	has_many :assignments

	def ability
		@ability = ProfessorAbility.new(self)
	end

	def admin?
		administrator
	end

	def avatar
		avatar_url.present? ? avatar_url : 'avatar-unknown.jpg'
	end

	def to_s
		full_name = [name, surname, second_surname]
		full_name.any?(&:present?) ? full_name.join(' ').strip : email
	end

	def short_name
		name.present? ? name : email
	end
end
