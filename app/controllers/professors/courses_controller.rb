class Professors::CoursesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource except: [:accept]

	def index
		@courses = @courses.includes(:professor).page(params[:page])
	end

	def students
		@students = @course.students
	end

	def accept
		@course = Course.find(params[:course_id])
		Student.find(params[:id]).courses_students.where(course: @course).first.update_attributes accepted: true
		flash[:notice] = 'Estudiante fue aceptado con éxito'
		redirect_to :back
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@course.save
		respond_with @course, location: -> { course_path(@course) }
	end

	def update
		@course.update course_params
		respond_with @course, location: -> { course_path(@course) }
	end

	def destroy
		@course.destroy
		respond_with @course, location: -> { courses_path }
	end

	private
	def course_params
		allowed_params = [:nrc, :name, :description, :year, :semester]
		allowed_params << :professor_id if current_professor.admin?
		params.require(:course).permit(allowed_params)
	end
end
