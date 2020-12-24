class HomePageAddColumns < ActiveRecord::Migration[6.1]
  def change
    add_column :home_pages, :hero_title, :string
    add_column :home_pages, :hero_description, :text
  end
end
