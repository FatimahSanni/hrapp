class User < ActiveRecord::Base
  rolify
  # after_create :create_tenant
	has_one :staff
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  def timeout_in
    5.hour
  end

  def forem_name
  	staff.name
  end
  

end
