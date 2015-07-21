class Appraisal < ActiveRecord::Base
  belongs_to :staff

  def staff_name
  	staff.try(:name)
  end

  def staff_name=(name)
  	self.staff = Staff.find_or_create_by(name: name) if name.present?
  end

  def total
  	j = self.job_knowledge
  	q = self.quality_of_work
  	p = self.productivity
  	d = self.dependability
  	a = self.attendance
  	r = self.relation_with_others
  	c = commitment_with_safety
  	s = self.supervisory_ability
  	values = [j, q, p, d, a, r,c, s]
  	return values.sum/values.size.to_f
  end
end
