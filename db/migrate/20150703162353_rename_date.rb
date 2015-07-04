class RenameDate < ActiveRecord::Migration
  def change
  	rename_column :leaves, :from, :starts_at
  end
end
