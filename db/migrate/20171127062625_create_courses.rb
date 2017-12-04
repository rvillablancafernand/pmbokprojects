class CreateCourses < ActiveRecord::Migration[5.0]
	def change
		create_table :courses do |t|
			t.string :id_code
			t.string :name
			t.text :description
			t.integer :year
			t.string :semester
			t.references :professor, foreign_key: true

			t.timestamps
		end
	end
end
