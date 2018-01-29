class Professors::AssignmentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource :course
	load_and_authorize_resource :assignment, through: :course

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @assignment.save assignment_params
			flash_message @assignment, :create, :notice
			redirect_to [@course, @assignment]
		else
			render :new
		end
	end

	def update
		if @assignment.update assignment_params
			flash_message @assignment, :update, :notice
			redirect_to [@course, @assignment]
		else
			render :edit
		end
	end

	def destroy
		@assignment.destroy
		if @assignment.destroyed?
			flash_message @assignment, :destroy, :notice
			redirect_to @course
		else
			flash_message @assignment, :destroy, :error
			redirect_to [@course, @assignment]
		end
	end

	private
	def assignment_params
		params.require(:assignment).permit(:name, :description, :pmbok_id, :company_id)
	end
end
