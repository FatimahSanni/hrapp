class InterviewCandidate < ActiveRecord::Base
  belongs_to :interview
  validates_numericality_of :education, :job, :work, :communication, :initiative, :enthusiasm, :company, greater_than_or_equal_to: 1, less_than_or_equal_to: 5
end
