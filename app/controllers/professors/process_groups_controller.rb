class Professors::ProcessGroupsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def edit
	end

	def update
		@process_group.update process_group_params
		respond_with @process_group, location: -> { @process_group.pmbok }
	end

	def destroy
		@process_group.destroy
		respond_with @process_group, location: -> { @process_group.pmbok }
	end

	private
	def process_group_params
		params.require(:process_group).permit(:process_group_type_id, process_objects_attributes: [:id, :knowledge_area_type_id, :version, :name, :description, :_destroy])
	end
end
