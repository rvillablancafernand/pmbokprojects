class ToolAndTechniqueType < ApplicationRecord
	has_many :tools_and_techniques

	def to_s
		name
	end
end
