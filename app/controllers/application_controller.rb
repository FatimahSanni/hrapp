class ApplicationController < ActionController::Base
  include Pundit
  helper_method :leave_requests, :leave_requests_count

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized!


  def forem_user
    current_user
  end
  helper_method :forem_user

  protect_from_forgery with: :exception
  before_filter :authenticate_user!

  private

  def user_not_authorized!
  	flash[:alert] = "Only System Admins."
  	redirect_to(request.referrer || root_path)
  end

  def leave_requests_count
    @leaves = Leave.all.count
  end

  def leave_requests
    @leaves = Leave.all.order('created_at ASC').limit(3)
  end

end
