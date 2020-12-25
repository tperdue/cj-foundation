class AddColumnsHomePage < ActiveRecord::Migration[6.1]
  def change
    add_column :home_pages, :about_section_title, :string
    add_column :home_pages, :about_section_description, :string
  end
end
