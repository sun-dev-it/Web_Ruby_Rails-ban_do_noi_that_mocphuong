class CreateShowrooms < ActiveRecord::Migration[8.0]
  def change
    create_table :showrooms do |t|
      t.text :content
      t.timestamps
    end
  end
end
