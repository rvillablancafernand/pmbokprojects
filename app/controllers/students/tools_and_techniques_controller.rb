class Students::ToolsAndTechniquesController < ApplicationController
	before_action :authenticate_student!
	load_and_authorize_resource

	def index
		@tools_and_techniquess = @tools_and_techniquess.page(params[:page])
	end

	def show
	end

	def new
	end

	def edit
	end

	def create
		if @tools_and_techniques.create tools_and_techniques_params
			flash[:notice] = "tools_and_techniques successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @tools_and_techniques.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def update
		if @tools_and_techniques.update tools_and_techniques_params
			flash[:notice] = "tools_and_techniques successfully updated"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @tools_and_techniques.errors
			redirect_back fallback_location: assignments_path
		end
	end

	def destroy
		if @tools_and_techniques.destroy tools_and_techniques_params
			flash[:notice] = "tools_and_techniques successfully created"
			redirect_back fallback_location: assignments_path
		else
			flash[:error] = @tools_and_techniques.errors
			redirect_back fallback_location: assignments_path
		end
	end

	private
	def tools_and_techniques_params
		result = params.require(:tools_and_techniques).permit(attachments_attributes: [:id, :assignment_process_object_id, :item, :_destroy])
		puts result[:attachments_attributes].merge! result[:assignment_process_object_id]
		result
	end
end
