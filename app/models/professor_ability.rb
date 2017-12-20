class ProfessorAbility
	include CanCan::Ability

	def initialize(professor)
		# Professors
		can :read, Student
		can :update, Professor, id: professor.id
		can :manage, Course, professor_id: professor.id
		can :create, Assignment
		can :manage, Assignment, course: { professor_id: professor.id }
		can :manage, AssignmentProcessObject, assignment: { course: { professor_id: professor.id }}

		if professor.admin?
			can :read, Student

			can :read, Professor
			can :create, Professor
			can :destroy, Professor, administrator: false

			can :manage, Company
			can :destroy, Student

			can [:read, :create, :update], Pmbok
			can :destroy, Pmbok, process_groups_count: 0

			can [:index, :create, :update, :destroy], ProcessGroup
			can [:index, :create, :update, :destroy], ProcessObject

			can [:index, :create, :update, :destroy], ProcessGroupType
			can [:index, :create, :update, :destroy], KnowledgeAreaType
			can [:index, :create, :update, :destroy], InputAndOutputType
			can [:index, :create, :update, :destroy], ToolAndTechniqueType

			can :manage, Course
			can :manage, Assignment
		end
	end
end
