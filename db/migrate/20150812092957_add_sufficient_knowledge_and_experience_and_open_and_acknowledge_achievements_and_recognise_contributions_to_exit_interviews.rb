class AddSufficientKnowledgeAndExperienceAndOpenAndAcknowledgeAchievementsAndRecogniseContributionsToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :sufficient_knowledge, :string
    add_column :exit_interviews, :experience, :string
    add_column :exit_interviews, :open, :string
    add_column :exit_interviews, :acknowledge_achievements, :string
    add_column :exit_interviews, :recognise_contributions, :string
  end
end
