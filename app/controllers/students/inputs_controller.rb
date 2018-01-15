class Students::InputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		if @input.update input_params
			@input.attachments.update_all assignment_process_object_id: params[:assignment_process_object_id]
			flash[:notice] = "input successfully updated"
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
