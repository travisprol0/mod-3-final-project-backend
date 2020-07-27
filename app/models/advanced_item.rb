class AdvancedItem < ApplicationRecord
    has_one :recipe
    has_many :items, through: :recipe
    belongs_to :inventory
end
