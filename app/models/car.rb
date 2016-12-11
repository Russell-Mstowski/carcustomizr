class Car < ApplicationRecord
  has_many :customizations
  has_many :users, through: :customizations
end
