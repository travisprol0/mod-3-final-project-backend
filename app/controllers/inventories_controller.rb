class InventoriesController < ApplicationController
    def index
        inv = Inventory.first
        render json: inv, include: [:items, :advanced_items]
    end
end
