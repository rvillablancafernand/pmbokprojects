class DeviseStudentMailerPreview < ActionMailer::Preview
	def confirmation_instructions
		DeviseMailer.confirmation_instructions(Student.first, "faketoken")
	end

	def reconfirmation_instructions
		DeviseMailer.reconfirmation_instructions(Student.first, "faketoken")
	end

	def reset_password_instructions
		DeviseMailer.reset_password_instructions(Student.first, "faketoken")
	end

	def unlock_instructions
		DeviseMailer.unlock_instructions(Student.first, "faketoken")
	end

	def email_changed
		DeviseMailer.email_changed(Student.first)
	end

	def password_change
		DeviseMailer.password_change(Student.first)
	end
end
