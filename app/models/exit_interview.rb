class ExitInterview < ActiveRecord::Base
	acts_as_taggable
	belongs_to :staff
	# acts_as_taggable_on
end
