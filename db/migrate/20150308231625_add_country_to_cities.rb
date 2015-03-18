class AddCountryToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :country, index: true
    add_foreign_key :cities, :countries
  end
end
