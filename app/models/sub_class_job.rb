class SubClassJob < ApplicationRecord
  belongs_to :class_job
  has_many :characters
end
