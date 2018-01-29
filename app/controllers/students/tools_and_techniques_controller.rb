class Students::ToolsAndTechniquesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def update
		@assignment_student = AssignmentStudent.find(params[:assignment_student_id])
		@course = @assignment_student.assignment.course
		@assignment_student_process_object = AssignmentStudentProcessObject.find_by(assignment_student: @assignment_student, process_object: @tool_and_technique.process_object)
		if @tool_and_technique.update tool_and_technique_params
			@tool_and_technique.attachments.update_all assignment_student_process_object_id: @assignment_student_process_object.id
			flash_message @tool_and_technique, :update, :notice
			@assignment_student.success
			redirect_back fallback_location: course_assignments_path(@course)
		else
			flash_message @tool_and_technique, :update, :error
			flash[:notice] = @tool_and_technique.errors.full_messages.join(' - ')
			redirect_back fallback_location: course_assignments_path(@course)
		end
	end

	private
	def tool_and_technique_params
		params.require(:tool_and_technique).permit(attachments_attributes: [:id, :comment, :grade, :assignment_student_id, :item, :_destroy])
	end
end
