class Students::OutputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def index
		@outputs = @outputs.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @output.create output_params
			flash[:notice] = "output successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @output.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def update
		if @output.update output_params
			flash[:notice] = "output successfully updated"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @output.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def destroy
		if @output.destroy output_params
			flash[:notice] = "output successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @output.errors
			redirect_back fallback_location: assignments_path
		end
	end

	private
	def output_params
		result = params.require(:output).permit(attachments_attributes: [:id, :assignment_process_object_id, :item, :_destroy])
		puts result[:attachments_attributes].merge! result[:assignment_process_object_id]
		result
	end
end
