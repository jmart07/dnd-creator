class CreateCharClasses < ActiveRecord::Migration[6.0]
  def change
    create_table :char_classes do |t|
      t.string :name
      t.integer :hp_buff
      t.integer :hit_dice
      t.integer :primary_abilities, array: true

      t.timestamps
    end
  end
end
