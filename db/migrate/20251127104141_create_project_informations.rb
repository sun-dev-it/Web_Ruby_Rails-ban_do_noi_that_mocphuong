class CreateProjectInformations < ActiveRecord::Migration[8.0]
  def change
    create_table :project_informations do |t|
      t.timestamps
      t.string :name
      t.string :content
      
    end
  end
end
