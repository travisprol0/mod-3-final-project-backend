class Recipe < ApplicationRecord
    belongs_to :advanced_item
    has_many :items
end
