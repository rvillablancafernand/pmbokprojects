class InputAndOutputType < ApplicationRecord
	has_many :inputs
	has_many :outputs

	set_attrs :id, :name, :description

	def to_s
		name
	end
end
