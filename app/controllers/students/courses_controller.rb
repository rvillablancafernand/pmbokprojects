class Students::CoursesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource
	before_action :set_course, only: [:show, :edit, :update, :destroy]

	# GET /courses
	def index
		@courses = Course.includes(:professor).page(params[:page])
	end

	# GET /courses/1
	def show
	end

	# GET /courses/new
	def new
		@course = Course.new
	end

	# GET /courses/1/edit
	def edit
	end

	# POST /courses
	def create
		@course = Course.create(course_params)
		respond_with @course
	end

	# PATCH/PUT /courses/1
	def update
		@course.update(course_params)
		respond_with @course
	end

	# DELETE /courses/1
	def destroy
		@course.destroy
		respond_with @course
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_course
		@course = Course.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def course_params
		params.require(:course).permit(:id_code, :name, :description, :year, :semester).merge(professor: current_professor)
	end
end
