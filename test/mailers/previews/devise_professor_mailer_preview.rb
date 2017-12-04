class DeviseProfessorPreview < ActionMailer::Preview
	def reset_password_instructions
		DeviseMailer.reset_password_instructions(Professor.first, "faketoken")
	end

	def unlock_instructions
		DeviseMailer.unlock_instructions(Professor.first, "faketoken")
	end

	def email_changed
		DeviseMailer.email_changed(Professor.first)
	end

	def password_change
		DeviseMailer.password_change(Professor.first)
	end

	def invitation_instructions
		DeviseMailer.invitation_instructions(Professor.second, "faketoken")
	end
end
