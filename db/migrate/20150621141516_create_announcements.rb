class CreateAnnouncements < ActiveRecord::Migration
  def change
    create_table :announcements do |t|
      t.string :topic
      t.text :information

      t.timestamps null: false
    end
  end
end
