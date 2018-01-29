class Professors::ProcessGroupsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource :pmbok
	load_and_authorize_resource

	def edit
	end

	def update
		if @process_group.update process_group_params
			flash_message @process_group, :update, :notice
			redirect_to @process_group.pmbok
		else
			render :edit
		end
	end

	def destroy
		@process_group.destroy
		if @process_group.destroyed?
			flash_message @process_group, :destroy, :notice
			redirect_to process_groups.pmbok
		else
			flash_message @process_group, :destroy, :error
			redirect_to @process_group.pmbok
		end
	end

	private
	def process_group_params
		params.require(:process_group).permit(:process_group_type_id, process_objects_attributes: [:id, :knowledge_area_type_id, :version, :name, :description, :_destroy])
	end
end
