class AddEqualTreatmentAndDiscussIssuesAndEncourageFeedbackAndConsistentPoliciesAndProvideRecognitionAndGaveDevelopmentOpportunitiesAndClearDecisionAndManagementCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :equal_treatment, :string
    add_column :exit_interviews, :discuss_issues, :string
    add_column :exit_interviews, :encourage_feedback, :string
    add_column :exit_interviews, :consistent_policies, :string
    add_column :exit_interviews, :provide_recognition, :string
    add_column :exit_interviews, :gave_development_opportunities, :string
    add_column :exit_interviews, :gave_feedback, :string
    add_column :exit_interviews, :clear_decision, :string
    add_column :exit_interviews, :management_comment, :text
  end
end
