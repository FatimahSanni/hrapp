class AddPromoteDevelopmentAndConstructiveFeedbackAndClearCommunicationAndProfessionalRelationshipAndSupervisorCommentToExitInterviews < ActiveRecord::Migration
  def change
    add_column :exit_interviews, :promote_development, :string
    add_column :exit_interviews, :constructive_feedback, :string
    add_column :exit_interviews, :clear_communication, :string
    add_column :exit_interviews, :professional_relationship, :string
    add_column :exit_interviews, :supervisor_comment, :text
  end
end
