class Course < ApplicationRecord
	belongs_to :professor
	has_and_belongs_to_many :students

	validates_presence_of :id_code, :name, :year, :semester

	def to_s
		"#{year} - #{semester} - #{name}"
	end
end
