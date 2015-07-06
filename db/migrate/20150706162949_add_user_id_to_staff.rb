class AddUserIdToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :user_id, :integer
    add_index :staff, :user_id
  end
end
