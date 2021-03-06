class Character < ApplicationRecord
  has_many :dogs

  validates :hero, presence: true, uniqueness: true
  validates :location, presence: true
end
