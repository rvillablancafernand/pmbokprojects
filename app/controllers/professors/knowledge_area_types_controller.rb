class Professors::KnowledgeAreaTypesController < ApplicationController
	before_action :authenticate_professor!
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
		@knowledge_area_type = KnowledgeAreaType.new(knowledge_area_type_params)

		if @knowledge_area_type.save
			redirect_to knowledge_area_types_url, notice: 'Knowledge Area was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /knowledge_area_types/1
	def update
		if @knowledge_area_type.update(knowledge_area_type_params)
			redirect_to knowledge_area_types_url, notice: 'Knowledge Area was successfully updated'
		else
			render :edit
		end
	end

	# DELETE /knowledge_area_types/1
	def destroy
		@knowledge_area_type.destroy
		redirect_to knowledge_area_types_url, notice: 'Knowledge Area was successfully destroyed.'
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
