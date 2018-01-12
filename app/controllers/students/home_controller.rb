class Students::HomeController < ApplicationController
	before_action :authenticate_student!, only: :index
	skip_authorization_check only: :not_found

	def index
		authorize! :visualize, :dashboard
	end

	def not_found
	end
end
