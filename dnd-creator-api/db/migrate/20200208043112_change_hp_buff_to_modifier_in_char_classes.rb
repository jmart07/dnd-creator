class ChangeHpBuffToModifierInCharClasses < ActiveRecord::Migration[6.0]
  def change
    rename_column :char_classes, :hp_buff, :modifier
  end
end
