class User < ApplicationRecord
  has_secure_password
  has_many :customizations
  has_many :cars, through: :customizations
  has_many :votes
  has_many :comments
end
