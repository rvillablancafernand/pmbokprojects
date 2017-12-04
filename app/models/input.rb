class Input < ApplicationRecord
	belongs_to :input_and_output_type
	belongs_to :process_object, counter_cache: true

	def to_s
		input_and_output_type.name
	end
end
