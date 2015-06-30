class AddEnabledToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :enabled, :boolean, default: true, null: false
  end
end
