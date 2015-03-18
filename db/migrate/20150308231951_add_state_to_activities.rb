class AddStateToActivities < ActiveRecord::Migration
  def change
    add_reference :activities, :state, index: true
    add_foreign_key :activities, :states
  end
end
