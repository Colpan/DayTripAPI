class CreateStates < ActiveRecord::Migration
  def change
    create_table :states do |t|
      t.string :state
      t.references :country, index: true

      t.timestamps null: false
    end
    add_foreign_key :states, :countries
  end
end
