class CreateDesignOffices < ActiveRecord::Migration[8.0]
  def change
    create_table :design_offices do |t|
      t.text :content

      t.timestamps
    end
  end
end
