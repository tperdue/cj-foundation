class CreateSiteInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :site_infos do |t|
      t.string :contact_email
      t.string :contact_phone
      t.string :site_name

      t.timestamps
    end
  end
end
