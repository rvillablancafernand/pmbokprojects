class ProcessObject < ApplicationRecord
	belongs_to :process_group
	belongs_to :knowledge_area_type

	def color
		knowledge_area_type.color
	end

	def bd_style
		"border-color:#{color};"
	end

	def bg_style
		"background-color:#{color};"
	end
end
