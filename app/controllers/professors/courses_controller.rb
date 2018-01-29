class Professors::CoursesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@courses = @courses.includes(:professor).page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @course.save course_params
			flash_message @course, :create, :notice
			redirect_to @course
		else
			render :new
		end
	end

	def update
		if @course.update course_params
			flash_message @course, :update, :notice
			redirect_to @course
		else
			render :edit
		end
	end

	def destroy
		@course.destroy
		if @course.destroyed?
			flash_message @course, :destroy, :notice
			redirect_to courses_url
		else
			flash_message @course, :destroy, :error
			redirect_to @course
		end
	end

	private
	def course_params
		allowed_params = [:nrc, :name, :description, :year, :semester]
		allowed_params << :professor_id if current_professor.admin?
		params.require(:course).permit(allowed_params)
	end
end
