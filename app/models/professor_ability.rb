class ProfessorAbility
	include CanCan::Ability

	def initialize(professor)
		alias_action :create, :read,  :update, :destroy, to: :crud
		alias_action :create, :index, :update, :destroy, to: :ciud

		can :visualize, :dashboard

		can :read, Student
		can :accept, Student, courses_students: {accepted: false}
		can :accept, Student, courses_students: {accepted: nil}

		can :update, Professor, id: professor.id

		can :manage, Course, professor_id: professor.id
		cannot :register, Course

		can :create, Assignment
		can :students, Assignment
		can :crud, Assignment, course: { professor_id: professor.id }
		can :crud, AssignmentProcessObject, assignment: { course: { professor_id: professor.id }}

		return unless professor.admin?

		can :read, Professor
		can :create, Professor
		can :destroy, Professor, administrator: false

		can :crud, Company

		can :destroy, Student

		can [:read, :create, :update], Pmbok
		can :destroy, Pmbok, process_groups_count: 0

		can :ciud, ProcessGroup
		can :ciud, ProcessObject

		can :ciud, ProcessGroupType
		can :ciud, KnowledgeAreaType
		can :ciud, InputAndOutputType
		can :ciud, ToolAndTechniqueType

		can :crud, Course
		can :crud, Assignment
	end
end
