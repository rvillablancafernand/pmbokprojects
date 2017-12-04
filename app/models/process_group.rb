class ProcessGroup < ApplicationRecord
	belongs_to :pmbok
	belongs_to :process_group_type
	has_many :process_objects, inverse_of: :process_group
	accepts_nested_attributes_for :process_objects, reject_if: :all_blank, allow_destroy: true

	def name
		process_group_type.name
	end

	def description
		process_group_type.description
	end
end
