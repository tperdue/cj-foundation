class CreateTextContents < ActiveRecord::Migration[6.1]
  def change
    create_table :text_contents do |t|
      t.string :title
      t.text :content
      t.boolean :active

      t.timestamps
    end
  end
end
