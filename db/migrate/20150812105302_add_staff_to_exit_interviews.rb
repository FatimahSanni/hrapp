class AddStaffToExitInterviews < ActiveRecord::Migration
  def change
    add_reference :exit_interviews, :staff, index: true
    add_foreign_key :exit_interviews, :staff
  end
end
