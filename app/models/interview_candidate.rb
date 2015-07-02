class InterviewCandidate < ActiveRecord::Base
  belongs_to :interview
  validates_numericality_of :education, :job, :work, :communication, :initiative, :enthusiasm, :company, greater_than_or_equal_to: 1, less_than_or_equal_to: 5

  def calc_average
  	total = self.education + self.job+self.work+self.communication+self.initiative+self.enthusiasm+self.company
  	average = (total/7.0).round(2)
  	return average
  end
end
