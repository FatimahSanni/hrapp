class AddStaffStatusToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :staff_status, :string
  end
end
