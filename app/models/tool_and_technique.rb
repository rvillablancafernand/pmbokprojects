class ToolAndTechnique < ApplicationRecord
	belongs_to :tool_and_technique_type
	belongs_to :process_object, counter_cache: true

	def to_s
		tool_and_technique_type.name
	end
end
