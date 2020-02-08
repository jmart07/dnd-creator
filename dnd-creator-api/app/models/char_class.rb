class CharClass < ApplicationRecord
  has_many :class_joins
  has_many :characters, through: :class_joins
end
