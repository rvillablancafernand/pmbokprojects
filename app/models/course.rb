class Course < ApplicationRecord
	belongs_to :professor, counter_cache: true
	has_many :courses_students
	has_many :students, through: :courses_students

	has_many :accepted_courses_students, -> { where accepted: true }, class_name: 'CourseStudent'
	has_many :accepted_students, through: :accepted_courses_students, source: :student
	has_many :assignments

	validates_presence_of :nrc, :name, :year, :semester
	validates_uniqueness_of :nrc

	def accepted?(student)
		courses_students.where(student: student).first.accepted?
	end

	def to_s
		"#{year}-#{semester} | #{name}"
	end
end
