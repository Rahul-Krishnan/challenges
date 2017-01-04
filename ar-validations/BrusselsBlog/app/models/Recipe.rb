class Recipe < ActiveRecord::Base
  has_many :comments

  validates :body, presence: true
  validates :body, uniqueness: true
  validates :body, format: { with: /Brussels sprouts/ }
  validates :servings, numericality: { minimum: 1 }

end
