class User < ApplicationRecord
  has_secure_password
  has_many :customizations
  has_many :cars, through: :customizations
end
