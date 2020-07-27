class InventoriesController < ApplicationController
    def index
        inv = Inventory.first
        render json: inv
    end
end
