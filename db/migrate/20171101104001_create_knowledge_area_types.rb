class CreateKnowledgeAreaTypes < ActiveRecord::Migration[5.0]
	def change
		create_table :knowledge_area_types do |t|
			t.string :name
			t.text :description
			t.string :color

			t.timestamps
		end
	end
end
