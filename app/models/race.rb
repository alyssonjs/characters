class Race < ApplicationRecord
    has_many :sub_races
    has_many :characters
end
