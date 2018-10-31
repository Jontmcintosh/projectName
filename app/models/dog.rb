class Dog < ApplicationRecord
    belongs_to :character

    validates :main_breed, presence: true, uniqueness: true
    validates :sub_breed, presence: true
end
