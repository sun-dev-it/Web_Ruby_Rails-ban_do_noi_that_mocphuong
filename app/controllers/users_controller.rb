class UsersController < ApplicationController
  before_action :require_login, only: [:show, :edit, :update, :destroy]
  before_action :authorize_user, only: [:show, :edit, :update, :destroy]

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to root_path
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def require_login
    return if logged_in?

    redirect_to login_path, alert: "Bạn cần đăng nhập trước."
  end

  def authorize_user
    return if current_user.id == params[:id].to_i

    redirect_to user_path(current_user), alert: "Bạn không có quyền truy cập tài khoản này."
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
