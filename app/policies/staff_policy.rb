class StaffPolicy
	attr_reader :user, :staff

	def initialize(current_user, staff)
		@current_user = current_user
		@staff = staff
	end


	def new?
		@current_user.admin?
	end

	def destroy?
		@current_user.admin?
	end

	def edit?
		@current_user.admin? or @current_user.user?
	end


	def update?
		@current_user.admin? or @current_user.user?
	end


end
