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
		if @professor.destroyed?
			flash_message @professor, :destroy, :notice
			redirect_to professors_url
		else
			flash_message @professor, :destroy, :error
			redirect_to @professor
		end
	end
end
