class AddJobChallengeAndOpportunitiesAndWorkloadAndResourcesAndColleaguesAndSkillsAndTrainingAndJobCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :job_challenge, :string
    add_column :exit_interviews, :opportunities, :string
    add_column :exit_interviews, :workload, :string
    add_column :exit_interviews, :resources, :string
    add_column :exit_interviews, :colleagues, :string
    add_column :exit_interviews, :skills, :string
    add_column :exit_interviews, :training, :string
    add_column :exit_interviews, :job_comment, :text
  end
end
