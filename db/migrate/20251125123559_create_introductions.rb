class CreateIntroductions < ActiveRecord::Migration[8.0]
  def change
    create_table :introductions do |t|
      t.timestamps
      t.text :content
    end
  end
end
