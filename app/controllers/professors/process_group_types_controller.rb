class Professors::ProcessGroupTypesController < ApplicationController
	before_action :authenticate_professor!
	before_action :set_process_group_type, only: [:show, :edit, :update, :destroy]

	# GET /process_group_types
	def index
		@process_group_types = ProcessGroupType.page(params[:page])
	end

	# GET /process_group_types/1
	def show
	end

	# GET /process_group_types/new
	def new
		@process_group_type = ProcessGroupType.new
	end

	# GET /process_group_types/1/edit
	def edit
	end

	# POST /process_group_types
	def create
		@process_group_type = ProcessGroupType.new(process_group_type_params)

		if @process_group_type.save
			redirect_to @process_group_type, notice: 'Process Group was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /process_group_types/1
	def update
		if @process_group_type.update(process_group_type_params)
			redirect_to @process_group_type, notice: 'Process Group was successfully updated'
		else
			render :edit
		end
	end

	# DELETE /process_group_types/1
	def destroy
		@process_group_type.destroy
		redirect_to process_group_types_url, notice: 'Process Group was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_process_group_type
		@process_group_type = ProcessGroupType.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def process_group_type_params
		params.require(:process_group_type).permit(:name, :description)
	end
end
