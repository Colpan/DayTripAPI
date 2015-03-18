class AddRegionToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :region, index: true
    add_foreign_key :cities, :regions
  end
end
