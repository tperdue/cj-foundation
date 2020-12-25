class CreateAboutPages < ActiveRecord::Migration[6.1]
  def change
    create_table :about_pages do |t|
      t.string :identifier


      t.timestamps
    end
  end
end
