class Onboarding < ActiveRecord::Base
  belongs_to :staff
  has_many :tasks
  accepts_nested_attributes_for :tasks, allow_destroy: true, reject_if: :all_blank

  def staff_name
  	staff.try(:name)
  end

  def staff_name=(name)
  	self.staff = Staff.find_or_create_by(name: name) if name.present?
  end
end
