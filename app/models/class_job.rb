class ClassJob < ApplicationRecord
    has_many :sub_class_job
    has_many :characters
end
