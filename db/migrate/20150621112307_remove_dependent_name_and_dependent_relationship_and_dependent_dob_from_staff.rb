class RemoveDependentNameAndDependentRelationshipAndDependentDobFromStaff < ActiveRecord::Migration
  def change
    remove_column :staff, :dependent_name, :string
    remove_column :staff, :dependent_relationship, :string
    remove_column :staff, :dependent_dob, :string
  end
end
