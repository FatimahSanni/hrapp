class AddJob2AndWork2AndProductivity2AndDependability2AndAttendance2AndRelation2AndSafety2AndSupervisory2AndOverall2AndComment2ToAppraisal < ActiveRecord::Migration
  def change
    add_column :appraisals, :job2, :integer
    add_column :appraisals, :work2, :integer
    add_column :appraisals, :productivity2, :integer
    add_column :appraisals, :dependability2, :integer
    add_column :appraisals, :attendance2, :integer
    add_column :appraisals, :relation2, :integer
    add_column :appraisals, :comment2, :integer
    add_column :appraisals, :safety2, :integer
    add_column :appraisals, :supervisory2, :integer
  end
end
