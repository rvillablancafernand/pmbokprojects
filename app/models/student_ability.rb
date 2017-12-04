class StudentAbility
	include CanCan::Ability

	def initialize(student)
		can :read, Course
	end
end
