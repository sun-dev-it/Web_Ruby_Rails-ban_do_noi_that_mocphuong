class OrderHistory < ApplicationRecord
  belongs_to :order
  belongs_to :user
  scope :latest, -> { order(created_at: :desc) }
end
