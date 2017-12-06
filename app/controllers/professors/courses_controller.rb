class Professors::CoursesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /courses
	def index
		@courses = @courses.includes(:professor).page(params[:page])
	end

	# GET /courses/1
	def show
	end

	# GET /courses/new
	def new
	end

	# GET /courses/1/edit
	def edit
	end

	# POST /courses
	def create
		@course.save
		respond_with @course, location: -> { course_path(@course) }
	end

	# PATCH/PUT /courses/1
	def update
		@course.update(course_params)
		respond_with @course, location: -> { course_path(@course) }
	end

	# DELETE /courses/1
	def destroy
		@course.destroy
		respond_with @course, location: -> { course_path(@course) }
	end

	private
	def course_params
		params.require(:course).permit(:id_code, :name, :description, :year, :semester).merge(professor: current_professor)
	end
end
