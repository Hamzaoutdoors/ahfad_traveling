class CreateTrips < ActiveRecord::Migration[7.0]
  def change
    create_table :trips do |t|
      t.string :title
      t.text :description
      t.integer :price
      t.date :date_start
      t.date :date_end
      t.string :image_main

      t.timestamps
    end
  end
end
