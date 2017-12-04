class Ability::Professor
	include CanCan::Ability

	def initialize(professor)
		# Professors
		can :read, Professor
		can :update, Professor, id: professor.id
		can :read, Student

		if professor.admin?
			can :create, Professor
			can :destroy, Professor, administrator: false

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
		else
			can :manage, Course, professor_id: professor.id
		end
	end
end
