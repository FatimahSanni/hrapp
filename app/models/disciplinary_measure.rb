class DisciplinaryMeasure < ActiveRecord::Base
  belongs_to :disciplinary_action
  belongs_to :disciplinary_case
end
