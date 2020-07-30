class Inventory < ApplicationRecord
    belongs_to :character
    has_many :items
    has_many :advanced_items
end
