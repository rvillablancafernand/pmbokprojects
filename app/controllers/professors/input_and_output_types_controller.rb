class Professors::InputAndOutputTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@input_and_output_types = @input_and_output_types.page(params[:page])
	end

	def new
	end

	def edit
	end

	def create
		if @input_and_output_type.save input_and_output_type_params
			flash_message @input_and_output_type, :create, :notice
			redirect_to input_and_output_types_url
		else
			render :new
		end
	end

	def update
		if @input_and_output_type.update input_and_output_type_params
			flash_message @input_and_output_type, :update, :notice
			redirect_to input_and_output_types_url
		else
			render :edit
		end
	end

	def destroy
		@input_and_output_type.destroy
		if @input_and_output_type.destroyed?
			flash_message @input_and_output_type, :destroy, :notice
			redirect_to input_and_output_types_url
		else
			flash_message @input_and_output_type, :destroy, :error
			redirect_to input_and_output_types_url
		end
	end

	private
	def input_and_output_type_params
		params.require(:input_and_output_type).permit(:name, :description)
	end
end
