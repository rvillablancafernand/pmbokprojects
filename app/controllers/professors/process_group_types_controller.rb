class Professors::ProcessGroupTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@process_group_types = @process_group_types.page(params[:page])
	end

	def new
	end

	def edit
	end

	def create
		if @process_group_type.save process_group_type_params
			flash_message @process_group_type, :create, :notice
			redirect_to process_group_types_url
		else
			render :new
		end
	end

	def update
		if @process_group_type.update process_group_type_params
			flash_message @process_group_type, :update, :notice
			redirect_to process_group_types_url
		else
			render :edit
		end
	end

	def destroy
		@process_group_type.destroy
		if @process_group_type.destroyed?
			flash_message @process_group_type, :destroy, :notice
			redirect_to process_group_types_url
		else
			flash_message @process_group_type, :destroy, :error
			redirect_to process_group_types_url
		end
	end

	private
	def process_group_type_params
		params.require(:process_group_type).permit(:name, :description)
	end
end
