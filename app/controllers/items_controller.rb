class ItemsController < ApplicationController
   before_action :set_item, only: [:show, :edit, :update, :destroy]

    def index
        @items = Item.all
        @items = @items.where("title @@ ?", "%#{params.dig(:items, :what)}%") unless params.dig(:items, :what).nil?
    end

    def show; end

    def new
        @item = Item.new
    end

    def create
        @item = Item.new(item_params)
        @item.user = current_user

        if @item.save
            redirect_to item_path(@item)
        else
            render :new
        end
    end

    def edit; end

    def update
        if @item.update(item_params)
            redirect_to item_path(@item)
        else
            render :edit
        end
    end

    def destroy
        @item.destroy
        redirect_to items_path
    end

    private

    def item_params
        params.require(:item).permit(:title, :description, :price, :category, photos: [])
    end

    def set_item
        @item = Item.find(params[:id])
    end
end
