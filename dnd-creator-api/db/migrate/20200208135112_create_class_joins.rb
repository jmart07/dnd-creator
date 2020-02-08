class CreateClassJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :class_joins do |t|
      t.references :character, null: false, foreign_key: true
      t.references :char_class, null: false, foreign_key: true

      t.timestamps
    end
  end
end
