class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :task
      t.references :onboarding, index: true

      t.timestamps null: false
    end
    add_foreign_key :todos, :onboardings
  end
end
