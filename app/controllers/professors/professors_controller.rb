class Professors::ProfessorsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource

	# GET /professors
	def index
		@professors = @professors.page(params[:page])
	end

	# GET /professors/1
	def show
	end

	# DELETE /professors/1
	def destroy
		@professor.destroy
		respond_with @professor
	end
end
