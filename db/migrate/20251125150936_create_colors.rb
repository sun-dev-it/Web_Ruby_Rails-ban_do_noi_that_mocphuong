class CreateColors < ActiveRecord::Migration[8.0]
  def change
    create_table :colors do |t|
      t.string :background
      t.string :header
      t.string :footer

      t.timestamps
    end
  end
end
