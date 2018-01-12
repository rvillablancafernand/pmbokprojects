class AssignmentProcessObject < ApplicationRecord
	# Relations
	belongs_to :assignment
	belongs_to :process_object, optional: true
	belongs_to :student
	has_many :attachments

	# Validations
	validates_uniqueness_of :assignment_id, scope: [:process_object_id, :student_id]
end
