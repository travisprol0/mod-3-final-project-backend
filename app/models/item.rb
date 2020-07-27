class Item < ApplicationRecord
    belongs_to :recipe
    belongs_to :inventory
end
