class Professors::StudentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /students
	def index
		@students = @students.page(params[:page])
	end

	# GET /students/1
	def show
	end

	# DELETE /students/1
	def destroy
		@student.destroy
		respond_with @student
	end
end
