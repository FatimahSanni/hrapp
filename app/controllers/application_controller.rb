class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?
  before_filter :authenticate_user!
  helper_method :leave_requests, :leave_requests_count, :confirmation

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized!

  


  def forem_user
    current_user
  end
  helper_method :forem_user

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:account_update) {|u|
    u.permit(:email, :username, :password, :password_confirmation)}
  end

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

  def confirmation
    @employees = Staff.where(confirmed: false)
    @employees.each do |employee|
      if !employee.hire_date.blank?
        if Date.today >= (employee.hire_date + 6.month)
          employee
        end
      end
    end
  end

end
