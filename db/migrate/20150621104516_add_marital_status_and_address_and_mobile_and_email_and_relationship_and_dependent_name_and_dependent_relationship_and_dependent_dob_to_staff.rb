class AddMaritalStatusAndAddressAndMobileAndEmailAndRelationshipAndDependentNameAndDependentRelationshipAndDependentDobToStaff < ActiveRecord::Migration
  def change
    add_column :staff, :marital_status, :string
    add_column :staff, :address, :string
    add_column :staff, :mobile, :string
    add_column :staff, :email, :string
    add_column :staff, :relationship, :string
    add_column :staff, :dependent_name, :string
    add_column :staff, :dependent_relationship, :string
    add_column :staff, :dependent_dob, :date
  end
end
