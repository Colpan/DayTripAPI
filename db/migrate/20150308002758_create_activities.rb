class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :name
      t.string :address
      t.string :category
      t.string :price
      t.integer :clicks
      t.text :description
      t.string :image
      t.string :latitude
      t.string :longitude
      t.integer :rating

      t.timestamps null: false
    end
  end
end
