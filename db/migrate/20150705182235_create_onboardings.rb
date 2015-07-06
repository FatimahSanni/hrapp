class CreateOnboardings < ActiveRecord::Migration
  def change
    create_table :onboardings do |t|
      t.belongs_to :staff, index: true

      t.timestamps null: false
    end
    add_foreign_key :onboardings, :staff
  end
end
