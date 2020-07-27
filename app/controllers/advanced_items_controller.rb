class AdvancedItemsController < ApplicationController
    def index
        advItems = AdvancedItem.All
        render json: advItems
    end
end
