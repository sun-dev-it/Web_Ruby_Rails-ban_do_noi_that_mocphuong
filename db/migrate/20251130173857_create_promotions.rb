class CreatePromotions < ActiveRecord::Migration[8.0]
  def change
    create_table :promotions do |t|
      t.string :name
      t.text :content
      t.string :video

      t.timestamps
    end
  end
end
