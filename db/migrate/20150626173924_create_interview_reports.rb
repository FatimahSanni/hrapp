class CreateInterviewReports < ActiveRecord::Migration
  def change
    create_table :interview_reports do |t|
      t.string :name
      t.integer :education
      t.integer :work
      t.integer :job_knowledge
      t.integer :communication
      t.integer :initiative
      t.integer :enthusiasm
      t.integer :company_knowledge
      t.text :note

      t.timestamps null: false
    end
  end
end
