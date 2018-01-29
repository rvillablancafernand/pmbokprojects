class CreateAttachments < ActiveRecord::Migration[5.0]
	def change
		create_table :attachments do |t|
			t.references :assignment_student_process_object, foreign_key: true
			t.references :attachable, polymorphic: true
			t.attachment :item
			t.text :comment
			t.decimal :grade
			t.text :comment_professor
			t.decimal :grade_professor

			t.timestamps
		end
	end
end
