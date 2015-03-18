class AddStateToCities < ActiveRecord::Migration
  def change
    add_reference :cities, :state, index: true
    add_foreign_key :cities, :states
  end
end
