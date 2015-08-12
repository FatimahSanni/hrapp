class AddHigherPayAndBetterBenefitsAndBetterCareerAndLifeBalanceAndCareerChangeAndCloserAndEmployeeConflictAndManagerConflictAndFamilyAndCompanyInstabilityAndOtherAndCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :higher_pay, :boolean, default: false, null: false
    add_column :exit_interviews, :better_benefits, :boolean, default: false, null: false
    add_column :exit_interviews, :better_career, :boolean, default: false, null: false
    add_column :exit_interviews, :life_balance, :boolean, default: false, null: false
    add_column :exit_interviews, :career_change, :boolean, default: false, null: false
    add_column :exit_interviews, :closer, :boolean, default: false, null: false
    add_column :exit_interviews, :employee_conflict, :boolean, default: false, null: false
    add_column :exit_interviews, :manager_conflict, :boolean, default: false, null: false
    add_column :exit_interviews, :family, :boolean, default: false, null: false
    add_column :exit_interviews, :company_instability, :boolean, default: false, null: false
    add_column :exit_interviews, :other, :boolean, default: false, null: false
    add_column :exit_interviews, :comment, :text
  end
end
