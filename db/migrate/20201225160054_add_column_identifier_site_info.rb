class AddColumnIdentifierSiteInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :site_infos, :identifier, :string
  end
end
