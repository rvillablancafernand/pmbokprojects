class Professors::PmboksController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /pmboks
	def index
		@pmboks = @pmboks.page(params[:page])
	end

	# GET /pmboks/1
	def show
	end

	# GET /pmboks/new
	def new
	end

	# GET /pmboks/1/edit
	def edit
	end

	# POST /pmboks
	def create
		@pmbok = Pmbok.create(pmbok_params)
		respond_with @pmbok
	end

	# PATCH/PUT /pmboks/1
	def update
		@pmbok.update(pmbok_params)
		respond_with @pmbok
	end

	# DELETE /pmboks/1
	def destroy
		@pmbok.destroy
		respond_with @pmbok
	end

	private
	def pmbok_params
		params.require(:pmbok).permit(:name, process_groups_attributes: [:id, :process_group_type_id, :_destroy])
	end
end
