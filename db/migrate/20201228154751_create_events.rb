class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.date :event_date
      t.string :start_time
      t.string :end_time
      t.string :location

      t.timestamps
    end
  end
end
