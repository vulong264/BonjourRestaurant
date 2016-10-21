class OrderSumsController < ApplicationController
  def index
    @order_sum = OrderSum.first
    if @order_sum 
      redirect_to @order_sum
    else
      redirect_to new_order_sum_path
    end 
  end

  def new
  end

  def show
    @order_sum = OrderSum.find params[:id]
    if params[:food_item_id]
      @order_detail = OrderDetail.new(food_item_id: 123, order_sum_id: 123)
        if @order_detail.save
          @food_item = FoodItem.find params[:food_item_id]
          redirect_to new_order_sum_path
        else
          render "ERROR ADDING ITEM"
        end
    end
  end
  
end
