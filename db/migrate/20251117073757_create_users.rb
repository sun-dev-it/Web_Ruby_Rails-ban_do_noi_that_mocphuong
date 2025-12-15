class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :provider
      t.string :uid
      t.string :role, default: 'customer'

      t.timestamps
    end
    add_index :users, [:provider, :uid], unique: true
  end
end
