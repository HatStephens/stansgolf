class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :main_title
      t.string :sub_title
      t.string :body

      t.timestamps null: false
    end
  end
end
