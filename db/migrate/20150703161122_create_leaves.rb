class CreateLeaves < ActiveRecord::Migration
  def change
    create_table :leaves do |t|
      t.belongs_to :leave_type, index: true
      t.belongs_to :staff, index: true
      t.date :from
      t.date :to
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :leaves, :leave_types
    add_foreign_key :leaves, :staff
  end
end
