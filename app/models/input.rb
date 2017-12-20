class Input < ApplicationRecord
	belongs_to :input_and_output_type
	belongs_to :process_object, counter_cache: true

	def to_s
		input_and_output_type.name
	end

	def to_s_with_desc
		if input_and_output_type.description.present?
			"<span data-toggle='tooltip' data-placement='bottom' data-title='#{input_and_output_type.description}'>#{to_s} <small><i class='fa fa-info-circle text-info m-0'></i></small></span>".html_safe
		else
			to_s
		end
	end
end
