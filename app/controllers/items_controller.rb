class ItemsController < ApplicationController
    def index
        items = Item.all
        render json: items
    end

    def update
        item = Item.find(params[:id])
        item.update!(item_params)
        render json: item
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end

    private

    def item_params
        params.require(:item).permit(:inventory_id, :room_id)
    end
end
