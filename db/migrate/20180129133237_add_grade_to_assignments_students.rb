class AddGradeToAssignmentsStudents < ActiveRecord::Migration[5.0]
	def change
		add_column :assignments_students, :grade, :decimal
	end
end
