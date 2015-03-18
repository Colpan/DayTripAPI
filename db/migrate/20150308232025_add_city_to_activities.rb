class AddCityToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :city, index: true
    add_foreign_key :activities, :cities
  end
end
