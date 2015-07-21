class CreateExitInterviews < ActiveRecord::Migration
  def change
    create_table :exit_interviews do |t|
      t.text :note

      t.timestamps null: false
    end
  end
end
