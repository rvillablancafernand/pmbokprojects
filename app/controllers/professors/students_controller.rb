class Professors::StudentsController < ApplicationController
	before_action :authenticate_professor!

	def index
		authorize! :index, Student
		@students = Student.accessible_by(current_ability).page(params[:page])
	end

	def show
		@student = Student.find(params[:id])
		authorize! :show, @student
	end

	def destroy
		@student = Student.find(params[:id])
		authorize! :destroy, @student

		@student.destroy
		if @student.destroyed?
			flash_message @student, :destroy, :notice
			redirect_to students_url
		else
			flash_message @student, :destroy, :error
			redirect_to @student
		end
	end

	def accept
		@student = Student.find(params[:id])
		@course = Course.find(params[:course_id])
		authorize! :show, Course
		authorize! :accept, Student, through: :course

		if @course.courses_students.find_by(student_id: @student.id).update_attributes accepted: true
			flash_message @student, :accept, :notice
			redirect_to @course
		else
			flash_message @student, :accept, :error
			redirect_to @course
		end

	end

	def reject
		@student = Student.find(params[:id])
		@course = Course.find(params[:course_id])
		authorize! :show, Course
		authorize! :reject, Student, through: :course

		@course_student = @course.courses_students.find_by(student_id: @student.id).destroy
		if @course_student.destroyed?
			flash_message @student, :reject, :notice
			redirect_to @course
		else
			flash_message @student, :reject, :error
			redirect_to @course
		end
	end

	def show_assignment
		@student = Student.find(params[:id])
		@assignment = Assignment.find(params[:assignment_id])
		@course = Course.find(params[:course_id])
		authorize! :show, Course
		authorize! :show, Assignment, through: :course
		authorize! :show_assignment, Student, through: :course
		@assignment_student = AssignmentStudent.find_or_create_by(assignment: @assignment, student: @student)
	end

	def edit
		@student = Student.find(params[:id])
		@assignment = Assignment.find(params[:assignment_id])
		@course = Course.find(params[:course_id])
		@assignment_student = AssignmentStudent.find_or_create_by(assignment: @assignment, student: @student)

		authorize! :show, Course
		authorize! :show, Assignment, through: :course
		authorize! :show_assignment, Student, through: :course
	end

	def update
		@student = Student.find(params[:id])
		@assignment = Assignment.find(params[:assignment_id])
		@course = Course.find(params[:course_id])
		@assignment_student = AssignmentStudent.find_or_create_by(assignment: @assignment, student: @student)

		authorize! :show, Course
		authorize! :show, Assignment, through: :course
		authorize! :show_assignment, Student, through: :course

		if @assignment_student.update assignment_student_params
			flash_message @student, :update, :notice
			redirect_to [:show_assignment, @course, @assignment, @student]
		else
			render :edit
		end
	end

	private
	def assignment_student_params
		params.require(:assignment_student).permit(:grade, :state, assignments_students_process_objects_attributes: [:id, :process_object_id, :_destroy])
	end

end
