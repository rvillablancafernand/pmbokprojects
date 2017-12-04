class CreateProcessObjects < ActiveRecord::Migration[5.0]
	def change
		create_table :process_objects do |t|
			t.references :process_group, foreign_key: true
			t.references :knowledge_area_type, foreign_key: true
			t.string :version
			t.string :name
			t.text :description

			t.timestamps
		end
	end
end
