class CreateAssignmentStudents < ActiveRecord::Migration[5.0]
	def change
		create_table :assignments_students do |t|
			t.references :assignment, foreign_key: true
			t.references :student, foreign_key: true
			t.string :state

			t.timestamps
		end
	end
end
