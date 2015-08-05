class Comment < ActiveRecord::Base
  belongs_to :announcement
  has_ancestry
end
