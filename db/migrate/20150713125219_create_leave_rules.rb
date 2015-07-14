class CreateLeaveRules < ActiveRecord::Migration
  def change
    create_table :leave_rules do |t|
      t.belongs_to :job_category, index: true
      t.integer :days
      t.belongs_to :employment_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :leave_rules, :job_categories
    add_foreign_key :leave_rules, :employment_types
  end
end
