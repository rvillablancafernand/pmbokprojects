class Assignment < ApplicationRecord
	# Relations
	belongs_to :course
	belongs_to :company
	belongs_to :pmbok
	has_and_belongs_to_many :students
	has_many :assignment_process_objects, inverse_of: :student
	accepts_nested_attributes_for :assignment_process_objects, allow_destroy: true

	# Validations
	validates_presence_of :name

	#Lifecycle
	after_create do
		students.each do |student|
			AssignmentProcessObject.create student: student, assignment: self
		end
	end

	# Attributes for views
	set_attrs :id, :name, :description, :course, :company

	# Methods
	def professor
		course.professor
	end

	def to_s
		name
	end
end
