class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :current_user, :logged_in?, :admin?
  before_action :slogan

  private

  def slogan
    @slogan = Slogan.first
  end

  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  def logged_in?
    current_user.present? 
  end

  def admin?
    logged_in? && current_user.role == "admin"
  end

  def require_admin
    unless admin?
      redirect_to root_path
    end
  end

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end
end
