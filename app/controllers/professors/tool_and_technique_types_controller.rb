class Professors::ToolAndTechniqueTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@tool_and_technique_types = @tool_and_technique_types.page(params[:page])
	end

	def new
	end

	def edit
	end

	def create
		if @tool_and_technique_type.save tool_and_technique_type_params
			flash_message @tool_and_technique_type, :create, :notice
			redirect_to tool_and_technique_types_url
		else
			render :new
		end
	end

	def update
		if @tool_and_technique_type.update tool_and_technique_type_params
			flash_message @tool_and_technique_type, :update, :notice
			redirect_to tool_and_technique_types_url
		else
			render :edit
		end
	end

	def destroy
		@tool_and_technique_type.destroy
		if @tool_and_technique_type.destroyed?
			flash_message @tool_and_technique_type, :destroy, :notice
			redirect_to tool_and_technique_types_url
		else
			flash_message @tool_and_technique_type, :destroy, :error
			redirect_to tool_and_technique_types_url
		end
	end

	private
	def tool_and_technique_type_params
		params.require(:tool_and_technique_type).permit(:name, :description)
	end
end
