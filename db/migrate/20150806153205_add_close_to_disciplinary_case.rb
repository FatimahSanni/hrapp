class AddCloseToDisciplinaryCase < ActiveRecord::Migration
  def change
    add_column :disciplinary_cases, :close, :boolean, null: false, default: false
  end
end
