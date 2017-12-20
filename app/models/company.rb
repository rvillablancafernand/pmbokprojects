class Company < ApplicationRecord
	# Relations
	has_many :assignments

	# Validations
	validates_presence_of :name

	# Attributes for views
	set_attrs :id, :name, :description

	# Methods
	def to_s
		name
	end
end
