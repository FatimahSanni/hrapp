class InterviewCandidate < ActiveRecord::Base
  after_save :set_average
  belongs_to :interview
  validates_numericality_of :education, :job, :work, :communication, :initiative, :enthusiasm, :company, greater_than_or_equal_to: 1, less_than_or_equal_to: 5

  def set_average
  	total = self.education+self.job+self.work+self.communication+self.initiative+self.enthusiasm+self.company
  	update_column(:average, total)
  end

  scope :sorted, -> { order("average DESC") }
end
