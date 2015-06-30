class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :position
      t.string :phone
      t.string :email
      t.text :comment
      t.attachment :resume

      t.timestamps null: false
    end
  end
end
