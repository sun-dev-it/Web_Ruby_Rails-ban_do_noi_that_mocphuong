class RequestsController < ApplicationController
  def create
    @request = Request.new(request_params)

    if @request.save
      redirect_to root_path, notice: "Gửi yêu cầu thành công"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def request_params
    params.require(:request).permit(:name, :phone, :content)
  end
end