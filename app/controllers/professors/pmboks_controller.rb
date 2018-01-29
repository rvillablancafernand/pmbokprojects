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
		if @pmbok.save pmbok_params
			flash_message @pmbok, :create, :notice
			redirect_to @pmbok
		else
			render :new
		end
	end

	def update
		if @pmbok.update pmbok_params
			flash_message @pmbok, :update, :notice
			redirect_to @pmbok
		else
			render :edit
		end
	end

	def destroy
		@pmbok.destroy
		if @pmbok.destroyed?
			flash_message @pmbok, :destroy, :notice
			redirect_to pmboks_url
		else
			flash_message @pmbok, :destroy, :error
			redirect_to @pmbok
		end
	end

	private
	def pmbok_params
		params.require(:pmbok).permit(:name, process_groups_attributes: [:id, :process_group_type_id, :_destroy])
	end
end
