class CreateInterviewCandidates < ActiveRecord::Migration
  def change
    create_table :interview_candidates do |t|
      t.string :name
      t.integer :education
      t.integer :work
      t.integer :job
      t.integer :communication
      t.integer :initiative
      t.integer :enthusiasm
      t.integer :company
      t.string :remark
      t.belongs_to :interview, index: true

      t.timestamps null: false
    end
    add_foreign_key :interview_candidates, :interviews
  end
end
