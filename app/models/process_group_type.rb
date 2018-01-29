class ProcessGroupType < ApplicationRecord
	has_many :process_groups

	def to_s
		name
	end
end
