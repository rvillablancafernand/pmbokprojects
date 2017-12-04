class CreateProcessGroups < ActiveRecord::Migration[5.0]
	def change
		create_table :process_groups do |t|
			t.references :pmbok, foreign_key: true
			t.references :process_group_type, foreign_key: true

			t.timestamps
		end
	end
end
