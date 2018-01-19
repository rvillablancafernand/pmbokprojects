class StudentAbility
	include CanCan::Ability

	def initialize(student)
		alias_action :create, :read,  :update, :destroy, to: :crud
		alias_action :create, :index, :update, :destroy, to: :ciud

		can :visualize, :dashboard

		can :read, Course
		can :show, Assignment
		can :show, AssignmentProcessObject
		can :update, Input
		can :update, Output
		can :update, ToolAndTechnique

		can :register, Course
		cannot :register, Course, students: { id: student.id }

		can :my_courses, Course
	end
end
