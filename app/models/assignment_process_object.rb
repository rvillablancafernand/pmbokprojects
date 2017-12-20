class AssignmentProcessObject < ApplicationRecord
	# Relations
	belongs_to :assignment
	belongs_to :process_object, optional: true
	belongs_to :student

	# Validations
	validates_uniqueness_of :process_object_id, scope: [:student_id, :assignment_id]
end
