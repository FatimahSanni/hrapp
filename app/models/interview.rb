class Interview < ActiveRecord::Base
	has_many :interview_candidates
	accepts_nested_attributes_for :interview_candidates, reject_if: :all_blank, allow_destroy: true
end
