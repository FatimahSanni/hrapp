class Leave < ActiveRecord::Base
	extend SimpleCalendar
	has_calendar
  belongs_to :leave_type
  belongs_to :staff

  Status = %w(Approved Denied)
end
