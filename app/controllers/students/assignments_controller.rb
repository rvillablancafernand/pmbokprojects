class Students::AssignmentsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource :course
	load_and_authorize_resource :assignment, through: :course

	def show
		flash[:alert] = "Actualiza tus <em>Entradas</em>, <em>Salidas</em> y <em>Herramientas y Técnicas</em> una a la vez".html_safe
		@assignment_student = AssignmentStudent.find_by(assignment: @assignment, student: current_user)
	end

	def done
		@assignment_student = AssignmentStudent.find_by(assignment: @assignment, student: current_user)
		@assignment_student.success
		flash_message @assignment_student, :done, :notice
		redirect_back fallback_location: course_assignment_path(@course, @assignment)
	end
end
