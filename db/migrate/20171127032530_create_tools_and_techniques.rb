class CreateToolsAndTechniques < ActiveRecord::Migration[5.0]
	def change
		create_table :tools_and_techniques do |t|
			t.references :tool_and_technique_type, foreign_key: true
			t.references :process_object, foreign_key: true

			t.timestamps
		end
	end
end
