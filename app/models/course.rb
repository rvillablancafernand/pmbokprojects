class Course < ApplicationRecord
	belongs_to :professor, counter_cache: true
	has_many :courses_students
	has_many :students, through: :courses_students
	has_many :assignments

	validates_presence_of :nrc, :name, :year, :semester
	validates_uniqueness_of :nrc

	set_attrs :id, :nrc, :name, :description, :year, :semester, :professor, :students_count

	def accepted?(student)
		courses_students.where(student: student).first.accepted?
	end

	def to_s
		"#{year}-#{semester} - (#{students_count}) #{Student.model_name.human.pluralize(students_count, I18n.locale)} - #{name}"
	end
end
