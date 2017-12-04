class CreatePmboks < ActiveRecord::Migration[5.0]
	def change
		create_table :pmboks do |t|
			t.string :version

			t.timestamps
		end
	end
end
