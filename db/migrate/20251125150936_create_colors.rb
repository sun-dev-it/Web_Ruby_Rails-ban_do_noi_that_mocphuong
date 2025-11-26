class CreateColors < ActiveRecord::Migration[8.0]
  def change
    create_table :colors do |t|
      t.string :background, default: "#ffffff"
      t.string :background1, default: "#ffffff"
      t.string :header, default: "#ffffff"
      t.string :footer, default: "#ffffff"

      t.timestamps
    end
  end
end
