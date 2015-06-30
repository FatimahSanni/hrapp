class CreateDisciplinaryActions < ActiveRecord::Migration
  def change
    create_table :disciplinary_actions do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
