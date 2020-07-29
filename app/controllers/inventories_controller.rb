class InventoriesController < ApplicationController
    def index
        inv = Inventory.first
        # items = Inventory.items
        render json: inv, include: [:items]
    end
end
