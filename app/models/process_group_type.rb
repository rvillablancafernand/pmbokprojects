class ProcessGroupType < ApplicationRecord
	has_many :process_groups

	set_attrs :id, :name, :description

	def to_s
		name
	end
end
