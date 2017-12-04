class Professors::KnowledgeAreaTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource
	before_action :set_knowledge_area_type, only: [:edit, :update, :destroy]

	# GET /knowledge_area_types
	def index
		@knowledge_area_types = KnowledgeAreaType.page(params[:page])
	end

	# GET /knowledge_area_types/new
	def new
		@knowledge_area_type = KnowledgeAreaType.new
	end

	# GET /knowledge_area_types/1/edit
	def edit
	end

	# POST /knowledge_area_types
	def create
		@knowledge_area_type = KnowledgeAreaType.create(knowledge_area_type_params)
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	# PATCH/PUT /knowledge_area_types/1
	def update
		@knowledge_area_type.update(knowledge_area_type_params)
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	# DELETE /knowledge_area_types/1
	def destroy
		@knowledge_area_type.destroy
		respond_with @knowledge_area_type, location: -> { knowledge_area_types_path }
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_knowledge_area_type
		@knowledge_area_type = KnowledgeAreaType.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def knowledge_area_type_params
		params.require(:knowledge_area_type).permit(:name, :description, :color)
	end
end
