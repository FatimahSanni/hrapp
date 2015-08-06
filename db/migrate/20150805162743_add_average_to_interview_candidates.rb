class AddAverageToInterviewCandidates < ActiveRecord::Migration
  def change
    add_column :interview_candidates, :average, :integer
  end
end
