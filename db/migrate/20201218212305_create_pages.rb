class CreatePages < ActiveRecord::Migration[6.1]
  def change
    create_table :pages do |t|
      t.string :title
      t.boolean :active

      t.timestamps
    end
  end
end
