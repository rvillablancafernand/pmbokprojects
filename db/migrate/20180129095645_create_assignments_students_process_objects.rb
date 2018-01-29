class CreateAssignmentsStudentsProcessObjects < ActiveRecord::Migration[5.0]
	def change
		create_table :assignments_students_process_objects do |t|
			t.references :assignment_student, foreign_key: true, index: false
			t.references :process_object, foreign_key: true, index: false
			t.string :state

			t.timestamps
		end
	end
end
