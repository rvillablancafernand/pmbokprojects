class Professors::AssignmentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	before_action :set_courses_and_students, only: [:new, :create, :edit, :update]

	def index
		@assignments = @assignments.includes(:course, :company).page(params[:page])
	end

	def students
		@students = @assignment.students
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@assignment.save
		respond_with @assignment, location: -> { assignment_path(@assignment) }
	end

	def update
		@assignment.update assignment_params
		respond_with @assignment, location: -> { assignment_path(@assignment) }
	end

	def destroy
		@assignment.destroy
		respond_with @assignment, location: -> { assignments_path }
	end

	private
	def set_courses_and_students
		authorize! :index, Course
		@courses = Course.accessible_by(current_ability)
		@students = @assignment.course.present? ? @assignment.course.students : []
	end

	def assignment_params
		params.require(:assignment).permit(:name, :description, :pmbok_id, :company_id, :course_id, student_ids: [], assignment_process_objects_attributes: [:id, :student_id, :process_object_id, :_destroy])
	end
end
