class Character < ApplicationRecord
  has_many :races
  has_many :char_classes
end
