class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true
  validates :category, inclusion: { in: %w(chinese italian japanese french belgian), message: "Choose one of the following: chinese, italian, japanese, french or belgian" }
end
