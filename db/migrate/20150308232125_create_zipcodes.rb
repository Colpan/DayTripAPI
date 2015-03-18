class CreateZipcodes < ActiveRecord::Migration
  def change
    create_table :zipcodes do |t|
      t.string :zipcode
      t.references :city, index: true
      t.references :state, index: true
      t.references :region, index: true
      t.references :country, index: true

      t.timestamps null: false
    end
    add_foreign_key :zipcodes, :cities
    add_foreign_key :zipcodes, :states
    add_foreign_key :zipcodes, :regions
    add_foreign_key :zipcodes, :countries
  end
end
