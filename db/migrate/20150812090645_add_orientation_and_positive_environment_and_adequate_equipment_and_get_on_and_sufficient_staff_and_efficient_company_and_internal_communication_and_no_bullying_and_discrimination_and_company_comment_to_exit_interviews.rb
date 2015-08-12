class AddOrientationAndPositiveEnvironmentAndAdequateEquipmentAndGetOnAndSufficientStaffAndEfficientCompanyAndInternalCommunicationAndNoBullyingAndDiscriminationAndCompanyCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :orientation, :string
    add_column :exit_interviews, :positive_environment, :string
    add_column :exit_interviews, :adequate_equipment, :string
    add_column :exit_interviews, :get_on, :string
    add_column :exit_interviews, :sufficient_staff, :string
    add_column :exit_interviews, :efficient_company, :string
    add_column :exit_interviews, :internal_communication, :string
    add_column :exit_interviews, :no_bullying, :string
    add_column :exit_interviews, :discrimination, :string
    add_column :exit_interviews, :company_comment, :text
  end
end
