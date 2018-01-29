class Students::CoursesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource :course
	load_and_authorize_resource :assignment, through: :course
	load_and_authorize_resource :assignment_student, through: :assignment


	def index
		@courses = @courses.includes(:professor, :courses_students, :students).page(params[:page])
	end

	def show
		@assignments = current_user.assignments_for(@course).page(params[:page])
	end

	def my_courses
		@courses = current_user.courses.includes(:professor, :courses_students, :students).page(params[:page])
		render :index
	end

	def register
		@course_student = CourseStudent.new(course: @course, student: current_user)
		if @course_student.save
			flash[:notice] = 'Te haz registrado con éxito'
			redirect_to courses_path(subdomain: 'www')
		else
			redirect_to courses_path(subdomain: 'www')
		end
	end
end
