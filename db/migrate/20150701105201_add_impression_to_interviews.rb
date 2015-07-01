class AddImpressionToInterviews < ActiveRecord::Migration
  def change
    add_column :interviews, :impression, :text
  end
end
