class CreateDisciplinaryCases < ActiveRecord::Migration
  def change
    create_table :disciplinary_cases do |t|
      t.belongs_to :staff, index: true
      t.string :reason
      t.text :report

      t.timestamps null: false
    end
    add_foreign_key :disciplinary_cases, :staff
  end
end
