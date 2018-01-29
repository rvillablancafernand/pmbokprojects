class AssignmentStudentProcessObject < ApplicationRecord
	# Relations
	belongs_to :assignment_student
	belongs_to :process_object
	has_many :attachments

	# Validations
	validates_uniqueness_of :process_object_id, scope: [:assignment_student], message: 'ya está asociado a este estudiante'
end
