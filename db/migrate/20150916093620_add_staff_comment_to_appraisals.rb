class AddStaffCommentToAppraisals < ActiveRecord::Migration
  def change
    add_column :appraisals, :staff_comment, :text
  end
end
