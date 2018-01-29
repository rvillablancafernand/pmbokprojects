class Professors::ProcessObjectsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource :pmbok
	load_and_authorize_resource

	def edit
	end

	def update
		if @process_object.update process_object_params
			flash_message @process_object, :update, :notice
			redirect_to @process_object.process_group.pmbok
		else
			render :edit
		end
	end

	def destroy
		@process_object.destroy
		if @process_object.destroyed?
			flash_message @process_object, :destroy, :notice
			redirect_to process_objects.process_group.pmbok
		else
			flash_message @process_object, :destroy, :error
			redirect_to @process_object.process_group.pmbok
		end
	end

	private
	def process_object_params
		params.require(:process_object).permit(:process_object_type_id, :version, :name, :description, inputs_attributes: [:id, :input_and_output_type_id, :_destroy], tools_and_techniques_attributes: [:id, :tool_and_technique_type_id, :_destroy], outputs_attributes: [:id, :input_and_output_type_id, :_destroy])
	end
end
