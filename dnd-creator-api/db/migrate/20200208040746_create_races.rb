class CreateRaces < ActiveRecord::Migration[6.0]
  def change
    create_table :races do |t|
      t.string :name
      t.integer :ability_buff, array: true
      t.integer :speed
      t.string :size

      t.timestamps
    end
  end
end
