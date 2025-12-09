class RequestsController < ApplicationController
  # Xử lý submit form
  def create
    @request = Request.new(request_params)

    if @request.save
      render root_path
    end
  end

  private

  # Strong params: chỉ cho phép các trường được submit
  def request_params
    params.require(:request).permit(:name, :phone, :content)
  end
end
