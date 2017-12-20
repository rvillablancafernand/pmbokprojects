class Professor < ApplicationRecord
	# Include default devise modules. Others available are:
	# , :omniauthable, :confirmable
	devise :database_authenticatable, :trackable, :timeoutable, :lockable, :registerable, :validatable, :recoverable, :rememberable, :invitable

	delegate :can?, :cannot?, to: :ability

	has_many :courses
	has_many :students, through: :courses
	has_many :assignments

	set_attrs :id, :name, :surname, :second_surname, :email, :invitation_accepted?, :courses_count, :sign_in_count, :current_sign_in_at, :last_sign_in_at

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
