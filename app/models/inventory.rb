class Inventory < ApplicationRecord
    belongs_to :character
    has_many :items
    validates :items, length: {maximum: 5}
end
