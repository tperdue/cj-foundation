class CreateMediaFiles < ActiveRecord::Migration[6.1]
  def change
    create_table :media_files do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
