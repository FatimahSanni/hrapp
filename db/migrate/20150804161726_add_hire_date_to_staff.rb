class AddHireDateToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :hire_date, :date
  end
end
