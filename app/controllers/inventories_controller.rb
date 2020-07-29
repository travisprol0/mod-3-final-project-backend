class InventoriesController < ApplicationController
    def index
        inv = Inventory.first
        render json: { inv => inv.items }
    end
end
