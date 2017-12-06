class Professors::CompaniesController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@companies = @companies.page(params[:page])
		respond_with(@companies)
	end

	def show
		respond_with(@company)
	end

	def new
		respond_with(@company)
	end

	def edit
	end

	def create
		@company.save
		respond_with(@company)
	end

	def update
		@company.update(company_params)
		respond_with(@company)
	end

	def destroy
		@company.destroy
		respond_with(@company)
	end

	private
	def company_params
		params.require(:company).permit(:name, :description)
	end
end
