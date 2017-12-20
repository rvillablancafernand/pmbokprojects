class Professors::CoursesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@courses = @courses.includes(:professor).page(params[:page])
		respond_with @courses, location: -> { courses_path }
	end

	def show
		respond_with @course, location: -> { course_path(@course) }
	end

	def new
		respond_with @course
	end

	def edit
	end

	def create
		@course.save
		respond_with @course, location: -> { course_path(@course) }
	end

	def update
		@course.update(course_params)
		respond_with @course, location: -> { course_path(@course) }
	end

	def destroy
		@course.destroy
		respond_with @course, location: -> { courses_path }
	end

	private
	def course_params
		params.require(:course).permit(:nrc, :name, :description, :year, :semester).merge(professor: current_professor)
	end
end
