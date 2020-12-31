class AddColumnSiteInfo < ActiveRecord::Migration[6.1]
  def change
    add_column :site_infos, :contact_address_1, :text
    add_column :site_infos, :contact_address_2, :text
    add_column :site_infos, :contact_city, :text
    add_column :site_infos, :contact_state, :text
    add_column :site_infos, :contact_zip, :text
  end
end
