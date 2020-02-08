class CreateRaceJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :race_joins do |t|
      t.references :character, null: false, foreign_key: true
      t.references :race, null: false, foreign_key: true

      t.timestamps
    end
  end
end
