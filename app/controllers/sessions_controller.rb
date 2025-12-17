class SessionsController < ApplicationController
  def oauth
    auth = request.env['omniauth.auth']
    return redirect_to root_path if auth.nil?

    user = User.find_by(email: auth['info']['email'])
    if user
      user.update(
        provider: auth['provider'],
        uid: auth['uid'],
        name: auth['info']['name'],
        email: auth['info']['email']
      )
    else
      user = User.create!(
        provider: auth['provider'],
        uid: auth['uid'],
        name: auth['info']['name'],
        email: auth['info']['email'],
        role: 'customer'
      )
    end

    user.save!
    
    session[:user_id] = user.id
    
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
