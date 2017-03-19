class BakingCategory < ApplicationRecord
  has_many :recipes
  validates_uniqueness_of :name
end
