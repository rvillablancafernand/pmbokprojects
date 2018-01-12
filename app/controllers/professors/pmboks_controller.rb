class Professors::PmboksController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@pmboks = @pmboks.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		@pmbok.save
		respond_with @pmbok
	end

	def update
		@pmbok.update pmbok_params
		respond_with @pmbok
	end

	def destroy
		@pmbok.destroy
		respond_with @pmbok
	end

	private
	def pmbok_params
		params.require(:pmbok).permit(:name, process_groups_attributes: [:id, :process_group_type_id, :_destroy])
	end
end
