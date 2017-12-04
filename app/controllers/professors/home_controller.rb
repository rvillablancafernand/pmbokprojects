class Professors::HomeController < ApplicationController
	before_action :authenticate_professor!

	def dashboard
	end
end
