class CreateFileUploads < ActiveRecord::Migration
  def change
    create_table :file_uploads do |t|
      t.string :name
      t.text :remark
      t.attachment :upload
      
      t.timestamps null: false
    end
  end
end
