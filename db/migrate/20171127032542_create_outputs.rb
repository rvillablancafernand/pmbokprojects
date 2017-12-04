class CreateOutputs < ActiveRecord::Migration[5.0]
	def change
		create_table :outputs do |t|
			t.references :input_and_output_type, foreign_key: true
			t.references :process_object, foreign_key: true

			t.timestamps
		end
	end
end
