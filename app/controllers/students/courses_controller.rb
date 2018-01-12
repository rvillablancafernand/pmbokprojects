class Students::CoursesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def index
		@courses = @courses.includes(:professor, :courses_students, :students).page(params[:page])
	end

	def show
		@assignments = @course.assignments
	end

	def my_courses
		@courses = current_user.courses.includes(:professor, :courses_students, :students).page(params[:page])
		respond_with @courses do |format|
			format.html { render :index }
		end
	end

	def register
		@course_student = CourseStudent.new(course: @course, student: current_user)
		@course_student.save
		flash[:notice] = 'Te haz registrado con éxito'
		respond_with @course_student do |format|
			format.html { redirect_to my_courses_path }
		end
	end
end
