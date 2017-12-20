class DeviseCreateProfessors < ActiveRecord::Migration[5.0]
	def change
		create_table :professors do |t|
			## Database authenticatable
			t.string :email, null: false, default: "", index: true
			t.string :encrypted_password, null: false, default: ""

			## Recoverable
			t.string   :reset_password_token, index: true
			t.datetime :reset_password_sent_at

			## Rememberable
			t.datetime :remember_created_at

			## Trackable
			t.integer  :sign_in_count, default: 0, null: false
			t.datetime :current_sign_in_at
			t.datetime :last_sign_in_at
			t.string   :current_sign_in_ip
			t.string   :last_sign_in_ip

			## Confirmable
			t.string   :confirmation_token, index: true
			t.datetime :confirmed_at
			t.datetime :confirmation_sent_at
			t.string   :unconfirmed_email # Only if using reconfirmable

			## Lockable
			t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
			t.string   :unlock_token, index: true # Only if unlock strategy is :email or :both
			t.datetime :locked_at

			## Invitable
			t.string   :invitation_token, index: true
			t.datetime :invitation_created_at
			t.datetime :invitation_sent_at
			t.datetime :invitation_accepted_at
			t.integer  :invitation_limit
			t.integer  :invited_by_id
			t.string   :invited_by_type

			## User Profile
			t.string :name
			t.string :surname
			t.string :second_surname
			t.string :avatar_url

			t.integer :courses_count, default: 0

			## Admin
			t.boolean :administrator, default: false

			t.timestamps null: false
		end
	end
end
