class Professors::KnowledgeAreaTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@knowledge_area_types = @knowledge_area_types.page(params[:page])
		respond_with @knowledge_area_types
	end

	def new
		respond_with @knowledge_area_type
	end

	def edit
	end

	def create
		@knowledge_area_type.save
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	def update
		@knowledge_area_type.update(knowledge_area_type_params)
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	def destroy
		@knowledge_area_type.destroy
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	private
	def knowledge_area_type_params
		params.require(:knowledge_area_type).permit(:name, :description, :color)
	end
end
