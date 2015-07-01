class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :interviewer
      t.string :position

      t.timestamps null: false
    end
  end
end
