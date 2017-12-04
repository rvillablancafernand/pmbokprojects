class KnowledgeAreaType < ApplicationRecord
	has_many :knowledge_areas

	def to_s
		name
	end
end
