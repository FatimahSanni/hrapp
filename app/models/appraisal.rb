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
  	return (values.sum)/(values.size.to_f)
  end

  def total2
    j2 = self.job2
    q2 = self.work2
    p2 = self.productivity2
    d2 = self.dependability2
    a2 = self.attendance2
    r2 = self.relation2
    c2 = safety2
    s2 = self.supervisory2
    values = [j2, q2, p2, d2, a2, r2,c2, s2]
    return (values.sum)/(values.size.to_f)
  end
end
