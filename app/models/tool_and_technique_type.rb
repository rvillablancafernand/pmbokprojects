class ToolAndTechniqueType < ApplicationRecord
	has_many :tools_and_techniques

	set_attrs :id, :name, :description

	def to_s
		name
	end
end
