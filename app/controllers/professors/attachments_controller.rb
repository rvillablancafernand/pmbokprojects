class Professors::AttachmentsController < ApplicationController
	before_action :authenticate_professor!
	load_and_authorize_resource :attachment

	def edit
	end

	def update
		if @attachment.update attachment_params
			flash_message @attachment, :update, :notice
			redirect_back fallback_location: courses_path
		else
			flash_message @attachment, :update, :error
			redirect_back fallback_location: courses_path
		end
	end

	private
	def attachment_params
		params.require(:attachment).permit(:comment_professor, :grade_professor)
	end
end
