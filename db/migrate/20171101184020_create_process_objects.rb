class CreateProcessObjects < ActiveRecord::Migration[5.0]
	def change
		create_table :process_objects do |t|
			t.references :process_group, foreign_key: true
			t.references :knowledge_area_type, foreign_key: true
			t.string :version
			t.string :name
			t.text :description

			t.integer :inputs_count, default: 0
			t.integer :tools_and_techniques_count, default: 0
			t.integer :outputs_count, default: 0

			t.timestamps
		end
	end
end
