class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.string :region
      t.references :country, index: true
      t.references :state, index: true

      t.timestamps null: false
    end
    add_foreign_key :regions, :countries
    add_foreign_key :regions, :states
  end
end
