class Professors::AssignmentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	before_action :set_courses_and_students, only: [:new, :create, :edit, :update]

	def index
		@assignments = @assignments.includes(:course, :company).page(params[:page])
		respond_with @assignments
	end

	def show
		respond_with @assignment
	end

	def new
		respond_with @assignment
	end

	def edit
	end

	def create
		@assignment.save
		respond_with @assignment
	end

	def update
		@assignment.update(assignment_params)
		respond_with @assignment
	end

	def destroy
		@assignment.destroy
		respond_with @assignment
	end

	private
	def set_courses_and_students
		authorize! :index, Course
		@courses = Course.accessible_by(current_ability)
		@students = @assignment.course.present? ? @assignment.course.students : []
	end

	def assignment_params
		params.require(:assignment).permit(:name, :description, :pmbok_id, :company_id, :course_id, student_ids: [],  assignment_process_objects_attributes: [:id, :student_id, :process_object_id, :_destroy])
	end
end
