class Admin::RequestsController < ApplicationController
  before_action :require_admin
  before_action :require_staff
  before_action :set_request, only: [:show, :destroy]

  def index
    @requests = Request.order(created_at: :desc)
  end

  def show
  end

  def destroy
    @request.destroy
    redirect_to admin_requests_path, notice: "Yêu cầu đã được xóa thành công."
  end

  private

  def set_request
    @request = Request.find(params[:id])
  end
end
