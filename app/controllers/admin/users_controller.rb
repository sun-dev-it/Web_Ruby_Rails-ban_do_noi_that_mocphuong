module Admin
  class UsersController < ApplicationController
    before_action :require_admin
    before_action :set_user, only: [:show, :edit, :update, :destroy]

    # Hiển thị danh sách user
    def index
      @users = User.where(role: ['Quản lí web', 'Quản lí đơn hàng']).order(role: :desc)
      @Manager = User.where(role: 'Quản lí web').count < 2
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
      if @user.save
        redirect_to admin_users_path
      else
        render :new
      end
    end

    # Form chỉnh sửa user
    def edit
      @user = User.find(params[:id])
    end


    # Cập nhật user
    def update
      if @user.update(user_params)
        redirect_to admin_users_path
      else
        render :edit
      end
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
      params.require(:user).permit(:name, :email, :password, :password_confirmation, :role)
    end
  end
end
