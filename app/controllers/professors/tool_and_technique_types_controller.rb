class Professors::ToolAndTechniqueTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@tool_and_technique_types = @tool_and_technique_types.page(params[:page])
		respond_with @tool_and_technique_types
	end

	def new
		respond_with @tool_and_technique_type
	end

	def edit
	end

	def create
		@tool_and_technique_type.save
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	def update
		@tool_and_technique_type.update(tool_and_technique_type_params)
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	def destroy
		@tool_and_technique_type.destroy
		respond_with @tool_and_technique_type, location: -> { tool_and_technique_types_path }
	end

	private
	def tool_and_technique_type_params
		params.require(:tool_and_technique_type).permit(:name, :description)
	end
end
