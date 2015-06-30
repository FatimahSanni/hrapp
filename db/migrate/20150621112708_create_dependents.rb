class CreateDependents < ActiveRecord::Migration
  def change
    create_table :dependents do |t|
      t.string :name
      t.string :relationship
      t.date :dob
      t.belongs_to :staff, index: true

      t.timestamps null: false
    end
    add_foreign_key :dependents, :staff
  end
end
