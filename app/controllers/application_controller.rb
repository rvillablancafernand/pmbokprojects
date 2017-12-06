require 'application_responder'

class ApplicationController < ActionController::Base
	self.responder = ApplicationResponder
	respond_to :html

	before_action :verify_requested_format!

	protect_from_forgery with: :exception

	helper_method :current_user, :user_signed_in?, :current_resource, :current_resource?

	def current_ability
		current_user.ability
	end

	def current_user
		if request.subdomain == 'profesores'
			current_professor
		elsif request.subdomain == 'www'
			current_student
		end
	end

	def current_resource
		if request.subdomain == 'profesores'
			:professor
		elsif request.subdomain == 'www'
			:student
		end
	end

	def current_resource?(resource)
		resource == current_resource
	end

	def user_signed_in?
		if request.subdomain == 'profesores'
			professor_signed_in?
		elsif request.subdomain == 'www'
			student_signed_in?
		end
	end

	rescue_from CanCan::AccessDenied do |exception|
		redirect_to root_path, alert: exception.message
	end
end
