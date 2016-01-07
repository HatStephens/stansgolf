class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_type
      t.integer :event_number
      t.integer :event_year
      t.boolean :regular_event
      t.boolean :ryder_cup
      t.string :location
      t.date :event_date
      t.time :event_time
      t.string :description
      t.float :deposit
      t.float :cost
      t.string :website
      t.string :map

      t.timestamps null: false
    end
  end
end
