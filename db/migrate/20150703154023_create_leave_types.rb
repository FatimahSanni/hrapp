class CreateLeaveTypes < ActiveRecord::Migration
  def change
    create_table :leave_types do |t|
      t.string :name
      t.string :number_of_days

      t.timestamps null: false
    end
  end
end
