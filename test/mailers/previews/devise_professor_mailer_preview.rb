class DeviseProfessorPreview < ActionMailer::Preview
	def reset_password_instructions
		DeviseMailer.reset_password_instructions(professor, "faketoken")
	end

	def unlock_instructions
		DeviseMailer.unlock_instructions(professor, "faketoken")
	end

	def email_changed
		DeviseMailer.email_changed(professor)
	end

	def password_change
		DeviseMailer.password_change(professor)
	end

	def invitation_instructions
		DeviseMailer.invitation_instructions(professor, "faketoken")
	end

	private
	def professor
		professor = Professor.new email: 'email@test.com', name: 'Name', surname: 'Surname', second_surname: 'SecondSurname'
		inviter = Professor.new email: 'inviter@test.com', name: 'Inviter', surname: 'Surname', second_surname: 'SecondSurname'
		professor.invited_by = inviter
		professor.invitation_sent_at = Time.now
		professor
	end
end
