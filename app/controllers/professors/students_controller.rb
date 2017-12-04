class Professors::StudentsController < ApplicationController
	before_action :authenticate_professor!
	before_action :set_student, only: [:show, :destroy]

	# GET /students
	def index
		@students = Student.page(params[:page])
	end

	# GET /students/1
	def show
	end

	# DELETE /students/1
	def destroy
		@student.destroy
		redirect_to students_url, notice: 'Student was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_student
		@student = Student.find(params[:id])
	end
end
