class Professors::ProfessorsController < ApplicationController
	before_action :authenticate_professor!
	before_action :set_professor, only: [:show, :destroy]

	# GET /professors
	def index
		@professors = Professor.page(params[:page])
	end

	# GET /professors/1
	def show
	end

	# DELETE /professors/1
	def destroy
		@professor.destroy
		redirect_to professors_url, notice: 'Professor was successfully destroyed.'
	end

	private
	# Use callbacks to share common setup or constraints between actions.
	def set_professor
		@professor = Professor.find(params[:id])
	end
end
