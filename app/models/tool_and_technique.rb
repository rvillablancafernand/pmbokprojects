class ToolAndTechnique < ApplicationRecord
	belongs_to :tool_and_technique_type
	belongs_to :process_object, counter_cache: true
	has_many :attachments, as: :attachable
	accepts_nested_attributes_for :attachments, allow_destroy: true

	def to_s
		tool_and_technique_type.name
	end

	def to_s_with_desc
		if tool_and_technique_type.description.present?
			"<span data-toggle='tooltip' data-placement='bottom' data-title='#{tool_and_technique_type.description}'>#{to_s} <small><i class='fa fa-info-circle text-info m-0'></i></small></span>".html_safe
		else
			to_s
		end
	end
end
