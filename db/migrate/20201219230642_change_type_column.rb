class ChangeTypeColumn < ActiveRecord::Migration[6.1]
  def change
    rename_column :media_files, :type, :file_type
  end
end
