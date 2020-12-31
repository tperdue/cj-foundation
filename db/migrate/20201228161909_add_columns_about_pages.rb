class AddColumnsAboutPages < ActiveRecord::Migration[6.1]
  def change
    add_column :about_pages, :top_title, :string
    add_column :about_pages, :top_description, :text
  end
end
