class CreateContacts < ActiveRecord::Migration[8.0]
  def change
    create_table :contacts do |t|
      t.string :fb
      t.string :zalo
      t.string :phone
      t.string :address

      t.timestamps
    end
  end
end
