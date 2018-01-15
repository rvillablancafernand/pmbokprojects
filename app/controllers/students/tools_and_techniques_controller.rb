class Students::ToolsAndTechniquesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		if @tool_and_technique.update tool_and_technique_params
			@tool_and_technique.attachments.update_all assignment_process_object_id: params[:assignment_process_object_id]
			flash[:notice] = "tool_and_technique successfully updated"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @tool_and_technique.errors
			redirect_back fallback_location: assignments_path
		end
	end

	private
	def tool_and_technique_params
		params.require(:tool_and_technique).permit(attachments_attributes: [:id, :assignment_process_object_id, :item, :_destroy])
	end
end
