class StudentAbility
	include CanCan::Ability

	def initialize(student)
		alias_action :create, :read,  :update, :destroy, to: :crud
		alias_action :create, :index, :update, :destroy, to: :ciud

		can :visualize, :dashboard

		can :index, Course
		can :show, Course, courses_students: { student_id: student.id, accepted: true }
		can :my_courses, Course
		can :register, Course
		cannot :register, Course, students: { id: student.id }

		can :read, Assignment, assignments_students: { student_id: student.id }
		can :read, AssignmentStudent, student_id: student.id
		can :read, AssignmentStudentProcessObject, assignments_students: { student_id: student.id }

		can :done, Assignment, assignments_students: { student_id: student.id, state_name: :in_progress }
		can :update, Input
		can :update, Output
		can :update, ToolAndTechnique
	end
end
