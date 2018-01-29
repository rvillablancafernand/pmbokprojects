class KnowledgeAreaType < ApplicationRecord
	has_many :knowledge_areas

	def to_s
		name
	end

	def to_s_with_desc
		if description.present?
			"<span data-toggle='tooltip' data-placement='bottom' data-title='#{description}'>#{to_s.mb_chars.upcase} <small><i class='fa fa-info-circle text-info m-0'></i></small></span>".html_safe
		else
			to_s.mb_chars.upcase
		end
	end
end
