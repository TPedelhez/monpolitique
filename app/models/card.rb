class Card < ApplicationRecord

  has_many :opinions, dependent: :destroy
  has_many :users, through: :opinions

  validates :description, presence: true
  validates :candidate, presence: true
end
