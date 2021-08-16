class AddBuildingToBattery < ActiveRecord::Migration[5.2]
  def change
    add_reference :batteries, :buildings, foreign_key: true
  end
end
