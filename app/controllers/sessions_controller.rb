class SessionsController < ApplicationController
  def oauth
    auth = request.env["omniauth.auth"]

    return redirect_to login_path, alert: "Đăng nhập Facebook thất bại." if auth.nil?

    email = auth.dig("info", "email").to_s.downcase.strip

    if email.blank?
      return redirect_to login_path, alert: "Facebook không cung cấp email."
    end

    user = User.find_by(email: email)

    if user
      user.update!(
        provider: auth["provider"],
        uid: auth["uid"],
        name: auth.dig("info", "name")
      )
    else
      user = User.create!(
        provider: auth["provider"],
        uid: auth["uid"],
        name: auth.dig("info", "name"),
        email: email,
        role: "customer"
      )
    end

    session[:user_id] = user.id

    redirect_to root_path, notice: "Đăng nhập thành công."
  end

  def new
    # Hiển thị form đăng nhập
  end

  def create
    user = User.find_by(email: params[:email].to_s.downcase.strip)

    if user&.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: "Đăng nhập thành công.", anchor: nil
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