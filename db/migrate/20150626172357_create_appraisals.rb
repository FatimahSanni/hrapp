class CreateAppraisals < ActiveRecord::Migration
  def change
    create_table :appraisals do |t|
      t.belongs_to :staff, index: true
      t.date :from
      t.date :to
      t.string :appraisal_type
      t.integer :job_knowledge
      t.integer :quality_of_work
      t.integer :productivity
      t.integer :dependability
      t.integer :attendance
      t.integer :relation_with_others
      t.integer :commitment_with_safety
      t.integer :supervisory_ability
      t.integer :overall
      t.text :comment

      t.timestamps null: false
    end
    add_foreign_key :appraisals, :staff
  end
end
