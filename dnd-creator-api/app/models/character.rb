class Character < ApplicationRecord
  has_many :race_joins
  has_many :races, through: :race_joins

  has_many :class_joins
  has_many :char_classes, through: :class_joins
end
