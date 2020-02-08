class Race < ApplicationRecord
  has_many :race_joins
  has_many :characters, through: :race_joins
end
