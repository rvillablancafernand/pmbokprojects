class Students::OutputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		@assignment_student = AssignmentStudent.find(params[:assignment_student_id])
		@course = @assignment_student.assignment.course
		@assignment_student_process_object = AssignmentStudentProcessObject.find_by(assignment_student: @assignment_student, process_object: @output.process_object)
		if @output.update output_params
			@output.attachments.update_all assignment_student_process_object_id: @assignment_student_process_object.id
			flash_message @output, :update, :notice
			@assignment_student.success
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
