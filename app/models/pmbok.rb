class Pmbok < ApplicationRecord
	has_many :process_groups, inverse_of: :pmbok
	accepts_nested_attributes_for :process_groups, allow_destroy: true

	validates_presence_of :name
	validates_uniqueness_of :name

	set_attrs :id, :name, :process_groups_count, :actions

	def to_s
		"#{Pmbok.singularize} #{name}"
	end
end
