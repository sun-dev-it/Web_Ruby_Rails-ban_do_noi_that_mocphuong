class Order < ApplicationRecord
  belongs_to :user
  has_many :order_items, dependent: :destroy
  has_many :order_histories, dependent: :destroy

  #enum status: { pending: 0, paid: 1, shipped: 2, completed: 3, cancelled: 4 }
end
