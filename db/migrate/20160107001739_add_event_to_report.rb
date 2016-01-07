class AddEventToReport < ActiveRecord::Migration
  def change
    add_column :reports, :event_id, :integer
    add_index :reports, :event_id
  end

end
