class Students::InputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def index
		@inputs = @inputs.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@input.assignment_process_object_id = params[:assignment_process_object_id]

		if @input.create input_params
			flash[:notice] = "input successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @input.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def update
		@input.assignment_process_object_id = params[:assignment_process_object_id]

		if @input.update input_params
			flash[:notice] = "input successfully updated"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @input.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def destroy
		if @input.destroy input_params
			flash[:notice] = "input successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @input.errors
			redirect_back fallback_location: assignments_path
		end
	end

	private
	def input_params
		params.require(:input).permit(attachments_attributes: [:id, :assignment_process_object_id, :item, :_destroy])
	end
end
