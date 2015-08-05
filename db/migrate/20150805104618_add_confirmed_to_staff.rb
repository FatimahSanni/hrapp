class AddConfirmedToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :confirmed, :boolean, null: false, default: false
  end
end
