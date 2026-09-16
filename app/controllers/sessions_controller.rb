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

  def create
    user = User.find_by(email: params[:email].to_s.downcase.strip)

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Đăng nhập thành công."
    else
      redirect_to login_path, alert: "Email hoặc mật khẩu không đúng."
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to root_path
  end

  def failure
    redirect_to login_path, alert: "Đăng nhập mạng thất bại."
  end
end
