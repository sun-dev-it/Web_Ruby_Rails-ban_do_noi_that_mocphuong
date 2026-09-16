class User < ApplicationRecord
  has_secure_password

  has_many :orders, dependent: :destroy
  has_many :cart_items, dependent: :destroy

  validates :password, presence: true, unless: :oauth_user?

  def oauth_user?
    provider.present? && uid.present?
  end
end