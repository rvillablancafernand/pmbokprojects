class Professors::HomeController < ApplicationController
	before_action :authenticate_professor!

	def dashboard
		authorize! :visualize, :dashboard
	end
end
