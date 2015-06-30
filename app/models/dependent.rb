class Dependent < ActiveRecord::Base
  belongs_to :staff
  validates :name, :relationship, :dob, presence: true
  validates :name, uniqueness: {scope: :relationship}
end
