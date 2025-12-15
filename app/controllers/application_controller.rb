class ApplicationController < ActionController::Base
  allow_browser versions: :modern
  helper_method :current_user, :logged_in?, :admin?
  before_action :slogan, :categories, :project_informations, :decorations, :accessories, :requests, :contact

  private

  def contact
    @contact = Contact.first
  end

  def requests
    @request = Request.new
  end

  def accessories
    @accessories = Accessory.order(:name)
  end

  def decorations
    @decorations = Decoration.order(:name)
  end

  def project_informations
    @project_informations = ProjectInformation.order(:name)
  end

  def categories
    @categories = Category.order(:name)
  end

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
    logged_in? && (current_user.role == "admin")
  end

  def require_admin
    unless admin?
      redirect_to root_path
    end
  end

  def admin_manager?
    logged_in? && current_user.role == "admin"
  end

  def require_admin_manager
    unless admin_manager?
      redirect_to root_path
    end
  end


  

  def require_login
    unless logged_in?
      redirect_to login_path
    end
  end
end
