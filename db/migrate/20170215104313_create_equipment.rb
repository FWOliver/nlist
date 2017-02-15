class CreateEquipment < ActiveRecord::Migration[5.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.string :kindof
      t.string :serial
      t.string :os
      t.string :udid
      t.string :location
      t.string :status

      t.timestamps
    end
  end
end
