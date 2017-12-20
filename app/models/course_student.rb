class CourseStudent < ApplicationRecord
	belongs_to :course, counter_cache: :course_counter
	belongs_to :student, counter_cache: :student_counter
end
