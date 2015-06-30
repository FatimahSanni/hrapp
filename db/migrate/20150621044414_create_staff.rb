class CreateStaff < ActiveRecord::Migration
  def change
    create_table :staff do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :emergency_phone
      t.string :emergency_name
      t.string :emergency_address

      t.timestamps null: false
    end
  end
end
