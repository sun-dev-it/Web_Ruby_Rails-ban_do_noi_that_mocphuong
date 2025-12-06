class CreateProjectInformationInfors < ActiveRecord::Migration[8.0]
  def change
    create_table :project_information_infors do |t|
      t.timestamps
      t.text :content
      
    end
  end
end
