class User < ActiveRecord::Base
  # after_create :create_tenant
	has_many :staff
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :timeoutable

  def timeout_in
    1.hour
  end

  def forem_name
  	staff.name
  end
  enum role_id: [:user, :manager, :admin]
  after_initialize :set_default_role, if: :new_record?

  private

  def set_default_role
  	self.role_id ||= :user
  end

  private
  # def create_tenant
  #   Apartment::Tenant.create(subdomain)
  # end
end
