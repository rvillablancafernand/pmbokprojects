class Students::OutputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		if @output.update output_params
			@output.attachments.update_all assignment_process_object_id: params[:assignment_process_object_id]
			flash[:notice] = "output successfully updated"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @output.errors
			redirect_back fallback_location: assignments_path
		end
	end

	private
	def output_params
		params.require(:output).permit(attachments_attributes: [:id, :assignment_process_object_id, :item, :_destroy])
	end
end
