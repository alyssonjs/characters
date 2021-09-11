class Character < ApplicationRecord
  belongs_to :race
  belongs_to :sub_race
  belongs_to :class_job
end
