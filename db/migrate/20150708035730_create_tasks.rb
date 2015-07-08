class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :todo
      t.references :onboarding, index: true

      t.timestamps null: false
    end
    add_foreign_key :tasks, :onboardings
  end
end
