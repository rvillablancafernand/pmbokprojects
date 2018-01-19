class Professors::StudentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@students = @students.page(params[:page])
	end

	def show
		@assignment = Assignment.find(params[:assignment_id])
		respond_with @student
	end

	def destroy
		@student.destroy
		respond_with @student
	end
end
