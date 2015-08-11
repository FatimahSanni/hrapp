class RemoveStatusFromDisciplinaryCases < ActiveRecord::Migration
  def change
    remove_column :disciplinary_cases, :status, :string
  end
end
