class CreateDisciplinaryMeasures < ActiveRecord::Migration
  def change
    create_table :disciplinary_measures do |t|
      t.belongs_to :disciplinary_action, index: true
      t.text :comment
      t.string :status
      t.belongs_to :disciplinary_case, index: true

      t.timestamps null: false
    end
    add_foreign_key :disciplinary_measures, :disciplinary_actions
    add_foreign_key :disciplinary_measures, :disciplinary_cases
  end
end
