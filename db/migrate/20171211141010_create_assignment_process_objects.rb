class CreateAssignmentProcessObjects < ActiveRecord::Migration[5.0]
	def change
		create_table :assignment_process_objects do |t|
			t.references :assignment, foreign_key: true
			t.references :process_object, foreign_key: true
			t.references :student, foreign_key: true

			t.timestamps
		end
	end
end
