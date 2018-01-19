class Students::AssignmentsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def show
	end
end
