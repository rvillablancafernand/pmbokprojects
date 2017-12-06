class Professors::ToolAndTechniqueTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource
	before_action :set_tool_and_technique_type, only: [:edit, :update, :destroy]

	# GET /tool_and_technique_types
	def index
		@tool_and_technique_types = ToolAndTechniqueType.page(params[:page])
	end

	# GET /tool_and_technique_types/new
	def new
		@tool_and_technique_type = ToolAndTechniqueType.new
	end

	# GET /tool_and_technique_types/1/edit
	def edit
	end

	# POST /tool_and_technique_types
	def create
		@tool_and_technique_type = ToolAndTechniqueType.create(tool_and_technique_type_params)
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	# PATCH/PUT /tool_and_technique_types/1
	def update
		@tool_and_technique_type.update(tool_and_technique_type_params)
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	# DELETE /tool_and_technique_types/1
	def destroy
		@tool_and_technique_type.destroy
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_tool_and_technique_type
		@tool_and_technique_type = ToolAndTechniqueType.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def tool_and_technique_type_params
		params.require(:tool_and_technique_type).permit(:name, :description)
	end
end
