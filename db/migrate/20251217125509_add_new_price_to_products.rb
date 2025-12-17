class AddNewPriceToProducts < ActiveRecord::Migration[8.0]
  def change
    add_column :products, :new_price, :integer
  end
end
