class DeviseUserMailerPreview < ActionMailer::Preview
	def confirmation_instructions
		set_locale
		DeviseMailer.confirmation_instructions(User.first, "faketoken")
	end

	def reconfirmation_instructions
		set_locale
		DeviseMailer.reconfirmation_instructions(User.first, "faketoken")
	end

	def reset_password_instructions
		set_locale
		DeviseMailer.reset_password_instructions(User.first, "faketoken")
	end

	def unlock_instructions
		set_locale
		DeviseMailer.unlock_instructions(User.first, "faketoken")
	end

	def email_changed
		set_locale
		DeviseMailer.email_changed(User.first)
	end

	def password_change
		set_locale
		DeviseMailer.password_change(User.first)
	end

	private
	def set_locale
		I18n.locale = :es
	end
end
