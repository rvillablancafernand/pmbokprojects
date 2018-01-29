class Assignment < ApplicationRecord
	# Relations
	belongs_to :pmbok
	belongs_to :company
	belongs_to :course
	has_many :students, through: :course
	has_many :assignments_students

	# Validations
	validates_presence_of :name

	# Methods
	def professor
		course.professor
	end

	def to_s
		name
	end
end
