class Professors::InputAndOutputTypesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource
	before_action :set_input_and_output_type, only: [:edit, :update, :destroy]

	# GET /input_and_output_types
	def index
		@input_and_output_types = InputAndOutputType.page(params[:page])
	end

	# GET /input_and_output_types/new
	def new
		@input_and_output_type = InputAndOutputType.new
	end

	# GET /input_and_output_types/1/edit
	def edit
	end

	# POST /input_and_output_types
	def create
		@input_and_output_type = InputAndOutputType.create(input_and_output_type_params)
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	# PATCH/PUT /input_and_output_types/1
	def update
		@input_and_output_type.update(input_and_output_type_params)
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	# DELETE /input_and_output_types/1
	def destroy
		@input_and_output_type.destroy
		respond_with @input_and_output_type, location: -> { input_and_output_types_path }
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_input_and_output_type
		@input_and_output_type = InputAndOutputType.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def input_and_output_type_params
		params.require(:input_and_output_type).permit(:name, :description)
	end
end
