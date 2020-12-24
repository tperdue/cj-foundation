class ChangeTypeIntToStringHomePage < ActiveRecord::Migration[6.1]
  def change
    change_column :home_pages, :identifier, :string
  end
end
