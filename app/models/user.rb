class User < ActiveRecord::Base
	has_one :staff
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def forem_name
  	staff.name
  end
end
