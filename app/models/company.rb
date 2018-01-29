class Company < ApplicationRecord
	# Relations
	has_many :assignments

	# Validations
	validates_presence_of :name

	# Methods
	def to_s
		name
	end
end
