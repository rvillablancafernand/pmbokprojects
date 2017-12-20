class Students::HomeController < ApplicationController
	before_action :authenticate_student!, only: :index

	def index
	end

	def not_found
	end
end
