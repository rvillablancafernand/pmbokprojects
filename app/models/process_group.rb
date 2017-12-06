class ProcessGroup < ApplicationRecord
	belongs_to :pmbok, counter_cache: true
	belongs_to :process_group_type
	has_many :process_objects, inverse_of: :process_group

	accepts_nested_attributes_for :process_objects, allow_destroy: true

	def name
		process_group_type.name
	end

	def description
		process_group_type.description
	end

	def to_s
		name
	end
end
