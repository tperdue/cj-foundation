class RenameCountToIdentifierHomepage < ActiveRecord::Migration[6.1]
  def change
    rename_column :home_pages, :count, :identifier
  end
end
