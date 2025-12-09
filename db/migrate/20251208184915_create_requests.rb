class CreateRequests < ActiveRecord::Migration[8.0]
  def change
    create_table :requests do |t|
      t.string :name
      t.string :phone
      t.text :content

      t.timestamps
    end
  end
end
