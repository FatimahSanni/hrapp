class Changemodelname < ActiveRecord::Migration
  def change
  	rename_table :employment_statuses, :employment_types
  end
end
