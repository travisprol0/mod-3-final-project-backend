class AdvancedItemsController < ApplicationController
    def index
        advItems = AdvancedItem.all
        render json: advItems
    end

    def update
        advItem = AdvancedItem.find(params[:id])
        advItem.update!(advItem_params)
        render json: advItem
    end

    def show
        advItem = AdvancedItem.find(params[:id])
        render json: advItem
    end

    private

    def advItem_params
        params.require(:advanced_item).permit(:inventory_id)
    end

end
