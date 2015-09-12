class StaffPolicy
	attr_reader :user, :staff

	def initialize(user, staff)
		@user = user
		@staff = staff
	end

	def create?
		user.has_role? :admin
	end


end
