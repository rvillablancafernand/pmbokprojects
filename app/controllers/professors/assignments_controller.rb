class Professors::AssignmentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@assignments = @assignments.page(params[:page])
		respond_with(@assignments)
	end

	def show
		respond_with(@assignment)
	end

	def new
		respond_with(@assignment)
	end

	def edit
	end

	def create
		@assignment.save
		respond_with(@assignment)
	end

	def update
		@assignment.update(assignment_params)
		respond_with(@assignment)
	end

	def destroy
		@assignment.destroy
		respond_with(@assignment)
	end

	private
	def assignment_params
		params.require(:assignment).permit(:name, :description, :course_id, :company_id, student_ids: [], process_object_ids: []).merge(professor: current_professor)
	end
end
