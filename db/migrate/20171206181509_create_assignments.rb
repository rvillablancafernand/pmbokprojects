class CreateAssignments < ActiveRecord::Migration[5.0]
	def change
		create_table :assignments do |t|
			t.string :name
			t.text :description
			t.references :course, foreign_key: true
			t.references :company, foreign_key: true
			t.references :professor, foreign_key: true

			t.timestamps
		end
	end
end
