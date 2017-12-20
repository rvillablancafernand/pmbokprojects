class Course < ApplicationRecord
	belongs_to :professor, counter_cache: true
	has_many :courses_students
	has_many :students, through: :courses_students

	validates_presence_of :nrc, :name, :year, :semester
	validates_uniqueness_of :nrc

	set_attrs :id, :nrc, :name, :description, :year, :semester, :professor, :students_count

	def accepted?(student)
		courses_students.where(student: student).first.accepted?
	end

	def to_s
		"#{year} - #{semester} - #{name}"
	end
end
