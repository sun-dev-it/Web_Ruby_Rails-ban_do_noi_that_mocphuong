class SessionsController < ApplicationController
  def google_auth
    auth = request.env['omniauth.auth']

    user = User.find_or_create_by(provider: auth['provider'], uid: auth['uid']) do |u|
      u.name = auth['info']['name']
      u.email = auth['info']['email']
      u.role = 'customer'
    end

    user.save!
    
    session[:user_id] = user.id
    
    if current_user.role == "admin"
      redirect_to dashboard_path
    end
    redirect_to root_path
  end

  def new
    # Hiển thị form đăng nhập
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end
end
