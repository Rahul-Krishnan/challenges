class Recipe < ActiveRecord::Base
  has_many :comments

  validates :title, presence: true
  validates :title, uniqueness: true
  validates :title, format: { with: /Brussels sprouts/ }

  validates :year, numericality: true, length: { in: 2..4 }
  validates :track_number, numericality: { only_integer: true }
  validates :genre, length: { minimum: 2 }
  validates :length_in_seconds, numericality: { greater_than: 10 }
end
