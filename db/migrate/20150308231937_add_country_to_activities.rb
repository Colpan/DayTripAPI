class AddCountryToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :country, index: true
    add_foreign_key :activities, :countries
  end
end
