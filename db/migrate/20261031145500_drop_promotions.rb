class DropPromotions < ActiveRecord::Migration[8.0]
  def change
    drop_table :promotions do |t|
      t.string :name
      t.text :content
      t.string :video

      t.timestamps
    end
  end
end
