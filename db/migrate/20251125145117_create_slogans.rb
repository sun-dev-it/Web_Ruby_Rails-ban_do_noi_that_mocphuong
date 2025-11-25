class CreateSlogans < ActiveRecord::Migration[8.0]
  def change
    create_table :slogans do |t|
      t.text :content

      t.timestamps
    end
  end
end
