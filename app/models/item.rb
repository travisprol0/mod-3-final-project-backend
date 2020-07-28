class Item < ApplicationRecord
    belongs_to :recipe
    belongs_to :inventory
    belongs_to :room
end
