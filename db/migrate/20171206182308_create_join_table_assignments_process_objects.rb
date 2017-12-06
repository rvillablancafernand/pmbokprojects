class CreateJoinTableAssignmentsProcessObjects < ActiveRecord::Migration[5.0]
	def change
		create_join_table :assignments, :process_objects do |t|
			t.index [:assignment_id, :process_object_id], name: 'index_assignments_processes_on_assignment_id_and_process_id'
			t.index [:process_object_id, :assignment_id], name: 'index_processes_assignments_on_process_id_and_assignment_id'
		end
	end
end
