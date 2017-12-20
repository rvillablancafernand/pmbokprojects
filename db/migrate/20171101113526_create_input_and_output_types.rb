class CreateInputAndOutputTypes < ActiveRecord::Migration[5.0]
	def change
		create_table :input_and_output_types do |t|
			t.string :name
			t.text :description

			t.timestamps
		end
	end
end
