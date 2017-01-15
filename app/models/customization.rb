class Customization < ApplicationRecord
  belongs_to :user
  belongs_to :car

  has_many :votes
  has_many :comments
end
