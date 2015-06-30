class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.text :note
      t.date :date
      t.text :specification
      t.belongs_to :staff, index: true

      t.timestamps null: false
    end
    add_foreign_key :jobs, :staff
  end
end
