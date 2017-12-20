class Professors::StudentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource
	respond_to :html

	def index
		if params[:course_id]
			if params[:course_id].present?
				@students = Course.find(params[:course_id]).students
			else
				@students= []
			end
			render :students_select
		elsif params[:assignment_id]
			@assignment = Assignment.find(params[:assignment_id])
			render :edit_assignment_students_form
		else
			@students = @students.page(params[:page])
			respond_with @students
		end
	end

	def show
		respond_with @student
	end

	def destroy
		@student.destroy
		respond_with @student
	end
end
