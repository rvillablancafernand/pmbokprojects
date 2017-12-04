class Professors::ProcessGroupsController < ApplicationController
	before_action :authenticate_professor!
	before_action :set_process_group, only: [:show, :edit, :update, :destroy]

	# GET /process_groups
	def index
		@process_groups = ProcessGroup.page(params[:page])
	end

	# GET /process_groups/1
	def show
	end

	# GET /process_groups/new
	def new
		@process_group = ProcessGroup.new
	end

	# GET /process_groups/1/edit
	def edit
	end

	# POST /process_groups
	def create
		@process_group = ProcessGroup.new(process_group_params)

		if @process_group.save
			redirect_to pmbok_process_group_path(@process_group), notice: 'Process Group was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /process_groups/1
	def update
		if @process_group.update(process_group_params)
			redirect_to pmbok_process_group_path(@process_group), notice: 'Process Group was successfully updated'
		else
			render :edit
		end
	end

	# DELETE /process_groups/1
	def destroy
		@process_group.destroy
		redirect_to process_groups_url, notice: 'Process Group was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_process_group
		@process_group = ProcessGroup.find(params[:id])
		@pmbok = @process_group.pmbok
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def process_group_params
		params.require(:process_group).permit(:process_group_type, process_objects_attributes: [:id, :version, :name, :description, :knowledge_area_type_id, :_destroy])
	end
end
