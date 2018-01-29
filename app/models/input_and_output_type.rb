class InputAndOutputType < ApplicationRecord
	has_many :inputs
	has_many :outputs

	def to_s
		name
	end
end
