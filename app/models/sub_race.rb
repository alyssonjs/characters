class SubRace < ApplicationRecord
  belongs_to :race
  has_many :characters
end
