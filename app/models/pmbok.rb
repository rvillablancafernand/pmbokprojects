class Pmbok < ApplicationRecord
	has_many :process_groups, inverse_of: :pmbok
	accepts_nested_attributes_for :process_groups, allow_destroy: true

	validates_presence_of :name

	def to_s
		"#{Pmbok.model_name.human} #{name}"
	end
end
