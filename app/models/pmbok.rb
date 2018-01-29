class Pmbok < ApplicationRecord
	has_many :process_groups, inverse_of: :pmbok
	accepts_nested_attributes_for :process_groups, allow_destroy: true
	has_many :process_objects, through: :process_groups

	validates_presence_of :name
	validates_uniqueness_of :name

	def to_s
		"#{Pmbok.singularize} #{name}"
	end
end
