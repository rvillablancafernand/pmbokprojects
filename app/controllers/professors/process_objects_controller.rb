class Professors::ProcessObjectsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /process_objects/1/edit
	def edit
	end

	# PATCH/PUT /process_objects/1
	def update
		@process_object.update(process_object_params)
		respond_with @process_object, location: -> { @process_object.process_group.pmbok }
	end

	# DELETE /process_objects/1
	def destroy
		@process_object.destroy
		respond_with @process_object, location: -> { @process_object.process_group.pmbok }
	end

	private
	def process_object_params
		params.require(:process_object).permit(:process_object_type_id, inputs_attributes: [:id, :input_and_output_type_id, :_destroy], tools_and_techniques_attributes: [:id, :tool_and_technique_type_id, :_destroy], outputs_attributes: [:id, :input_and_output_type_id, :_destroy])
	end
end
