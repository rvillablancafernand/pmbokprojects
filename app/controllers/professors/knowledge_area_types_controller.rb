class Professors::KnowledgeAreaTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@knowledge_area_types = @knowledge_area_types.page(params[:page])
	end

	def new
	end

	def edit
	end

	def create
		if @knowledge_area_type.save knowledge_area_type_params
			flash_message @knowledge_area_type, :create, :notice
			redirect_to knowledge_area_types_url
		else
			render :new
		end
	end

	def update
		if @knowledge_area_type.update knowledge_area_type_params
			flash_message @knowledge_area_type, :update, :notice
			redirect_to knowledge_area_types_url
		else
			render :edit
		end
	end

	def destroy
		@knowledge_area_type.destroy
		if @knowledge_area_type.destroyed?
			flash_message @knowledge_area_type, :destroy, :notice
			redirect_to knowledge_area_types_url
		else
			flash_message @knowledge_area_type, :destroy, :error
			redirect_to knowledge_area_types_url
		end
	end

	private
	def knowledge_area_type_params
		params.require(:knowledge_area_type).permit(:name, :description, :color)
	end
end
