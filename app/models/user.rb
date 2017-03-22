class User < ApplicationRecord
  has_many :recipes
  has_many :reviews
  has_secure_password
  validates_uniqueness_of :email
  validates :email, format: {
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  }
  # geocoded_by :address   # can also be an IP address
  # after_validation :geocode          # auto-fetch coordinates
end
