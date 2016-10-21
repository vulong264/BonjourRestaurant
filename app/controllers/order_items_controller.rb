class OrderItemsController < ApplicationController
    def create
        @order_item = OrderItem.new order_item_param
        @order_item.order = current_order
        if @order_item.save
            redirect_to menu_path
        else
            raise "can not add to order"
        end
    end

    private
    def order_item_param
        params.require(:order_item).permit(:quantity,:food_item_id)
    end
end
