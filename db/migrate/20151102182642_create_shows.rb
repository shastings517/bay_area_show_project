class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.string :venue
      t.string :image_url
      t.string :description
      t.integer :attendance
      t.string :genre
      t.integer :price
      t.date :showdate
      t.date :saledate
      t.float :latitude
      t.float :longitude

      t.timestamps null: false
    end
  end
end
