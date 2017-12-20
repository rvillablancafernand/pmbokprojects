class ProcessGroup < ApplicationRecord
	belongs_to :pmbok, counter_cache: true
	belongs_to :process_group_type
	has_many :process_objects, inverse_of: :process_group

	accepts_nested_attributes_for :process_objects, allow_destroy: true

	def name
		process_group_type.name
	end

	def to_s_with_desc
		if process_group_type.description.present?
			"<span data-toggle='tooltip' data-placement='bottom' data-title='#{process_group_type.description}'>#{to_s.mb_chars.upcase} <small><i class='fa fa-info-circle text-info m-0'></i></small></span>".html_safe
		else
			to_s.mb_chars.upcase
		end
	end

	def to_s
		name
	end
end
