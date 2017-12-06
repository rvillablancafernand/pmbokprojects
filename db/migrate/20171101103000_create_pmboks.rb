class CreatePmboks < ActiveRecord::Migration[5.0]
	def change
		create_table :pmboks do |t|
			t.string :name
			t.text :description

			t.integer :process_groups_count, default: 0

			t.timestamps
		end
	end
end
