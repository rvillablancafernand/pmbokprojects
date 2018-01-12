class Professors::ProfessorsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	def index
		@professors = @professors.page(params[:page])
	end

	def show
	end

	def destroy
		@professor.destroy
		respond_with @professor
	end
end
