class LeaveRule < ActiveRecord::Base
  belongs_to :job_category
  belongs_to :employment_type
end
