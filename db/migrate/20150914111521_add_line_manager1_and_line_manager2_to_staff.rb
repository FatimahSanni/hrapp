class AddLineManager1AndLineManager2ToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :line_manager1, :string
    add_column :staff, :line_manager2, :string
  end
end
