class AddPromotionToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :promotion, :boolean
  end
end
