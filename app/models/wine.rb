class Wine < ApplicationRecord
  validates :year, presence: true
  validates :grape, presence: true
  validates :region, presence: true
  validates :price, presence: true
end
