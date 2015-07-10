class Subdomain < ActiveRecord::Base
	after_create :set_tenant

	private
	def set_tenant
		Apartment::Tenant.create(name)
	end
end
