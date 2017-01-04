class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :artist, presence: true
  validates :album, presence: true
  validates :year, presence: true
  validates :track_number, presence: true
  validates :genre, presence: true
  validates :length_in_seconds, presence: true

  validates :year, numericality: true, length: { in: 2..4 }
  validates :track_number, numericality: { only_integer: true }
  validates :genre, length: { minimum: 2 }
  validates :length_in_seconds, numericality: { greater_than: 10 }

end
