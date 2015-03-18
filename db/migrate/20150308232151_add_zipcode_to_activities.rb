class AddZipcodeToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :zipcode, index: true
    add_foreign_key :activities, :zipcodes
  end
end
