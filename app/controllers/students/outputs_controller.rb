class Students::OutputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource
	load_and_authorize_resource :assignment_student

	def update
		@course = @assignment_student.assignment.course
		@assignment_student_process_object = AssignmentStudentProcessObject.find_by(assignment_student: @assignment_student, process_object: @output.process_object)
		if @output.update output_params
			@output.attachments.update_all assignment_student_process_object_id: @assignment_student_process_object.id
			flash_message @output, :update, :notice
			redirect_back fallback_location: course_assignments_path(@course)
		else
			flash_message @output, :update, :error
			flash[:notice] = @output.errors.full_messages.join(' - ')
			redirect_back fallback_location: course_assignments_path(@course)
		end
	end

	private
	def output_params
		params.require(:output).permit(attachments_attributes: [:id, :comment, :grade, :assignment_student_id, :item, :_destroy])
	end
end
