class AdvancedItemsController < ApplicationController
    def index
        advItems = AdvancedItem.all
        render json: advItems
    end
end
