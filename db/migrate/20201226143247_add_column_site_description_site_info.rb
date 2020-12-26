class AddColumnSiteDescriptionSiteInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :site_infos, :site_description, :text
  end
end
