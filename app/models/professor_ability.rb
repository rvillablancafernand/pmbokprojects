class ProfessorAbility
	include CanCan::Ability

	def initialize(professor)
		alias_action :create, :read,  :update, :destroy, to: :crud
		alias_action :create, :index, :update, :destroy, to: :ciud

		can :visualize, :dashboard

		can :update, Professor, id: professor.id

		can :accept, Student
		can :reject, Student

		can :update, Attachment

		can :crud, Course, professor_id: professor.id

		can :create, Assignment
		can :show_assignment, Student
		can :edit_assignment, Student

		can :crud, Assignment, course: { professor_id: professor.id }

		return unless professor.admin?

		can :invite, Professor
		can :read, Professor
		can :destroy, Professor, administrator: false

		can :crud, Company

		can :read, Student
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
