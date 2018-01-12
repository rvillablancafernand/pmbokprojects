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
		@company.save
		respond_with @company
	end

	def update
		@company.update company_params
		respond_with @company
	end

	def destroy
		@company.destroy
		respond_with @company
	end

	private
	def company_params
		params.require(:company).permit(:name, :description)
	end
end
