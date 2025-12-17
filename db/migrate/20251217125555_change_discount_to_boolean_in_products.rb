class ChangeDiscountToBooleanInProducts < ActiveRecord::Migration[8.0]
  def up
    # Chuyển từ integer sang boolean, các giá trị > 0 sẽ thành true, 0 thành false
    change_column :products, :discount, :boolean, using: "discount > 0", default: false
  end

  def down
    # Quay lại integer, true = 1, false = 0
    change_column :products, :discount, :integer, using: "CASE WHEN discount THEN 1 ELSE 0 END", default: 0
  end
end
