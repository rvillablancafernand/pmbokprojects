class CourseStudent < ApplicationRecord
	belongs_to :course, counter_cache: :students_count
	belongs_to :student, counter_cache: :courses_count

	validates_uniqueness_of :course_id, scope: :student_id
end
