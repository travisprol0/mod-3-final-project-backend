class Character < ApplicationRecord
    has_one :inventory
    has_many :items, through: :inventory
end
