class User < ActiveRecord::Base
  # after_create :create_tenant
  belongs_to :role
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
  
  def admin?
    self.role.name === "Admin"
  end

  def manager?
    self.role.name === "Manager"
  end

  def user?
    self.role.name === "User"
  end

end
