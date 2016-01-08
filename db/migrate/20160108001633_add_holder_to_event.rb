class AddHolderToEvent < ActiveRecord::Migration
  def change
    add_column :events, :holder, :string
  end
end
