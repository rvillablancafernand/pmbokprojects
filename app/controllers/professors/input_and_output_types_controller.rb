class Professors::InputAndOutputTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@input_and_output_types = @input_and_output_types.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@input_and_output_type.save
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	def update
		@input_and_output_type.update input_and_output_type_params
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	def destroy
		@input_and_output_type.destroy
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	private
	def input_and_output_type_params
		params.require(:input_and_output_type).permit(:name, :description)
	end
end
