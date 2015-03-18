class AddRegionToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :region, index: true
    add_foreign_key :activities, :regions
  end
end
