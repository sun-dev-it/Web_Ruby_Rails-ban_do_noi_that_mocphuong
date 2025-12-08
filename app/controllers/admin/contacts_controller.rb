class Admin::ContactsController < ApplicationController
  before_action :require_admin_manager

  def edit
    @contact = Contact.first
  end

  def update
    @contact = Contact.first_or_create!
    if @contact.update(contact_params)
      redirect_to edit_admin_contact_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    params.require(:contact).permit(:title, :email, :phone, :address, :content, :image)
  end
end
