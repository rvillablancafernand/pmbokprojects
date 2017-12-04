class Professors::PmboksController < ApplicationController
	before_action :authenticate_professor!
	before_action :set_pmbok, only: [:show, :edit, :update, :destroy]

	# GET /pmboks
	def index
		@pmboks = Pmbok.page(params[:page])
	end

	# GET /pmboks/1
	def show
	end

	# GET /pmboks/new
	def new
		@pmbok = Pmbok.new
	end

	# GET /pmboks/1/edit
	def edit
	end

	# POST /pmboks
	def create
		@pmbok = Pmbok.new(pmbok_params)

		if @pmbok.save
			redirect_to @pmbok, notice: 'Pmbok was successfully created.'
		else
			render :new
		end
	end

	# PATCH/PUT /pmboks/1
	def update
		if @pmbok.update(pmbok_params)
			redirect_to @pmbok, notice: 'Pmbok was successfully updated.'
		else
			render :edit
		end
	end

	# DELETE /pmboks/1
	def destroy
		@pmbok.destroy
		redirect_to pmboks_url, notice: 'Pmbok was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_pmbok
		@pmbok = Pmbok.find(params[:id])
	end

	# Never trust parameters from the scary internet, only allow the white list through.
	def pmbok_params
		params.require(:pmbok).permit(:version, process_groups_attributes: [:id, :process_group_type_id, :_destroy])
	end
end
