class Product < ApplicationRecord
    belongs_to :category
    has_many_attached :images, dependent: :destroy

    validates :name, presence: true
    validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }

    scope :search, ->(q) {
      where(
        "unaccent(name) ILIKE unaccent(:q)",
        q: "%#{q}%"
      )
    }

end
