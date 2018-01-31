class Professors::CompaniesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@companies = @companies.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @company.save company_params
			flash_message @company, :create, :notice
			redirect_to @company
		else
			render :new
		end
	end

	def update
		if @company.update company_params
			flash_message @company, :update, :notice
			redirect_to @company
		else
			render :edit
		end
	end

	def destroy
		@company.destroy
		if @company.destroyed?
			flash_message @company, :destroy, :notice
			redirect_to companies_url
		else
			flash_message @company, :destroy, :error
			redirect_to @company
		end
	end

	private
	def company_params
		params.require(:company).permit(:name, :description, :address, :phone)
	end
end
