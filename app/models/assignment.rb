class Assignment < ApplicationRecord
	belongs_to :course
	belongs_to :company
	belongs_to :professor
	has_and_belongs_to_many :students
	has_and_belongs_to_many :process_objects

	def to_s
		name
	end
end
