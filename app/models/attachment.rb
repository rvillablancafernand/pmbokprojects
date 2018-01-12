class Attachment < ApplicationRecord
	# Associations
	belongs_to :assignment_process_object
	belongs_to :attachable, polymorphic: :true

	before_validation :add_values

	def add_values
		self.assignment_process_object_id = attachable.assignment_process_object_id
	end

	# Paperclip
	has_attached_file :item,
		path: ":rails_root/public/uploads/attachments/:id-.:extension",
		url: "/uploads/attachments/:id-.:extension"

	validates_attachment_content_type :item, content_type: ['image/jpeg', 'image/png']
	validates_attachment_size :item, less_than: 10.megabytes
	validates_attachment_presence :item
end
