class CreateInputs < ActiveRecord::Migration[5.0]
	def change
		create_table :inputs do |t|
			t.references :input_and_output_type, foreign_key: true
			t.references :process_object, foreign_key: true

			t.timestamps
		end
	end
end
