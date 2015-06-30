class DisciplinaryCase < ActiveRecord::Base
  belongs_to :staff
  has_many :disciplinary_measures, dependent: :destroy
  accepts_nested_attributes_for :disciplinary_measures, reject_if: :all_blank, allow_destroy: true
end
