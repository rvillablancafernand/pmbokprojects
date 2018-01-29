class Attachment < ApplicationRecord
	# Associations
	belongs_to :assignment_student_process_object, optional: true
	belongs_to :attachable, polymorphic: :true

	# Paperclip
	has_attached_file :item,
		path: ":rails_root/public/uploads/attachments/:id-.:extension",
		url: "/uploads/attachments/:id-.:extension"

	validates_attachment_content_type :item, content_type: %w(image/gif image/jpeg image/jpg image/png application/pdf application/msword application/vnd.openxmlformats-officedocument.wordprocessingml.document text/plain application/vnd.ms-excel application/vnd.openxmlformats-officedocument.spreadsheetml.sheet)
	validates_attachment_size :item, less_than: 20.megabytes
	validates_attachment_presence :item
end
