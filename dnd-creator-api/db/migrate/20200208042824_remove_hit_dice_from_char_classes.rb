class RemoveHitDiceFromCharClasses < ActiveRecord::Migration[6.0]
  def change
    remove_column :char_classes, :hit_dice
  end
end
