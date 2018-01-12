class Students::AssignmentsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def index
		@assignments = @assignments.includes(:course, :company).page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@assignment.save
		respond_with @assignment
	end

	def update
		@assignment.update assignment_params
		respond_with @assignment
	end

	def destroy
		@assignment.destroy
		respond_with @assignment
	end

	private
	def assignment_params
		params.require(:assignment).permit(:name, :description, :pmbok_id, :company_id, :course_id, student_ids: [], assignment_process_objects_attributes: [:id, :student_id, :process_object_id, :_destroy])
	end
end
