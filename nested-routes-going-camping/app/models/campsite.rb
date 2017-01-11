class Campsite < ApplicationRecord
  has_many :campers
  has_many :supplies, through: :campers
end
