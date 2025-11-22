class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :current_user, :logged_in?, :admin?

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present? 
  end

  def admin?
    logged_in? && current_user.role?
  end

  def require_admin
    unless current_user.role?
      redirect_to root_path
    end
  end
end
