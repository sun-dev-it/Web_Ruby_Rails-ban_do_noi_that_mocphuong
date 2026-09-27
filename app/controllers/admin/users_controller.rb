class Admin::UsersController < ApplicationController
  before_action :require_admin
  before_action :require_super_admin
  before_action :set_user, only: [ :show, :edit, :update, :destroy ]

  # Hiển thị danh sách user
  def index
    @users = User.where(role: [ "super_admin", "admin_manager", "staff" ]).order(role: :desc)
    @Manager = User.where(role: "super_admin").count < 2
    @user = User.new
  end

  # Hiển thị chi tiết user
  def show
  end

  # Form tạo mới user
  def new
    @user = User.new
  end

  # Tạo user
  def create
    @user = User.new(user_params)
    @user.role = role_param

    if @user.save
      redirect_to admin_users_path
    else
      render :new
    end
  end

  def update
    if @user.update(user_params.merge(role: role_param))
      redirect_to admin_users_path
    else
      render :edit
    end
  end

  # Form chỉnh sửa user
  def edit
    @user = User.find(params[:id])
  end

  # Xóa user
  def destroy
    @user.destroy
    redirect_to admin_users_path
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end
  
  def role_param
    params.dig(:user, :role).presence_in(
      %w[super_admin admin_manager staff]
    )
  end
end
