class User < ApplicationRecord
  has_many :recipes
  has_many :reviews
  has_secure_password
  validates_uniqueness_of :email
  validates :email, format: {
    with: /\A.*@\z/
  }
end
