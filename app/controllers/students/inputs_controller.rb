class Students::InputsController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		@assignment_student = AssignmentStudent.find(params[:assignment_student_id])
		@course = @assignment_student.assignment.course
		@assignment_student_process_object = AssignmentStudentProcessObject.find_by(assignment_student: @assignment_student, process_object: @input.process_object)
		if @input.update input_params
			@input.attachments.update_all assignment_student_process_object_id: @assignment_student_process_object.id
			@assignment_student.success
			flash_message @input, :update, :notice
			redirect_back fallback_location: course_assignments_path(@course)
		else
			flash_message @input, :update, :error
			flash[:notice] = @input.errors.full_messages.join(' - ')
			redirect_back fallback_location: course_assignments_path(@course)
		end
	end

	private
	def input_params
		params.require(:input).permit(attachments_attributes: [:id, :comment, :grade, :assignment_student_id, :item, :_destroy])
	end
end
