class Course < ApplicationRecord
	belongs_to :professor
	has_and_belongs_to_many :students

	def to_s
		name
	end
end
