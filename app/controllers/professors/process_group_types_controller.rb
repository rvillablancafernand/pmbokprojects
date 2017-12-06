class Professors::ProcessGroupTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /process_group_types
	def index
		@process_group_types = @process_group_types.page(params[:page])
	end

	# GET /process_group_types/new
	def new
	end

	# GET /process_group_types/1/edit
	def edit
	end

	# POST /process_group_types
	def create
		@process_group_type = ProcessGroupType.create(process_group_type_params)
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	# PATCH/PUT /process_group_types/1
	def update
		@process_group_type.update(process_group_type_params)
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	# DELETE /process_group_types/1
	def destroy
		@process_group_type.destroy
		respond_with @process_group_type, location: -> { process_group_types_path }
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_process_group_type
		@process_group_type = ProcessGroupType.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def process_group_type_params
		params.require(:process_group_type).permit(:name, :description)
	end
end
