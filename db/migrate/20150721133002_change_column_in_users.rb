class ChangeColumnInUsers < ActiveRecord::Migration
  def change
  	change_column :users, :role_id, :integer
  	add_index :users, :role_id
  end
end
