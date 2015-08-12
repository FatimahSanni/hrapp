class AddSalaryAndTimelyWageAndBenefitsWorkLifeBalanceAndBenefitCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :salary, :string
    add_column :exit_interviews, :timely_wage, :string
    add_column :exit_interviews, :benefit, :string
    add_column :exit_interviews, :work_life_balance, :string
    add_column :exit_interviews, :benefit_comment, :text
  end
end
