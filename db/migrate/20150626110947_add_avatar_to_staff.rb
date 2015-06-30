class AddAvatarToStaff < ActiveRecord::Migration
  def change
    add_attachment :staff, :avatar
  end
end
