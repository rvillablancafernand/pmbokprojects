class Pmbok < ApplicationRecord
	has_many :process_groups, inverse_of: :pmbok
	accepts_nested_attributes_for :process_groups, reject_if: :all_blank, allow_destroy: true
end
