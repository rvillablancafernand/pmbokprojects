class Professors::ProcessGroupTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@process_group_types = @process_group_types.page(params[:page])
		respond_with @process_group_types
	end

	def new
		respond_with @process_group_type
	end

	def edit
	end

	def create
		@process_group_type.save
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	def update
		@process_group_type.update(process_group_type_params)
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	def destroy
		@process_group_type.destroy
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	private
	def process_group_type_params
		params.require(:process_group_type).permit(:name, :description)
	end
end
