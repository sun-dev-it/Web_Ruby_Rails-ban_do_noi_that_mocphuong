class User < ApplicationRecord
  has_many :orders
  has_many :cart_items, dependent: :destroy
end
