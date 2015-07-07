class CreateCompanyAssets < ActiveRecord::Migration
  def change
    create_table :company_assets do |t|
      t.string :name
      t.belongs_to :staff, index: true

      t.timestamps null: false
    end
    add_foreign_key :company_assets, :staff
  end
end
