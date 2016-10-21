class CheckoutController < ApplicationController
  def index
    @order = current_order
  end

  def confirm
    @order = current_order
    @order.shipping_cost = 20
		if order_params[:discount_code].to_s.length > 0
			if order_params[:discount_code].to_s=="CODERSCHOOL"
				@order.discount_code = "CODERSCHOOL"
				@order.origin_price = @order.total_price
				@order.discounted_price = @order.apply_discount(0.5)
				@order.grand_total = @order.discounted_price.to_f + @order.shipping_cost.to_f
				@order.confirmed_at = Time.now
				if @order.save
					render 'receipt'
				else
					flash[:error] = @order.errors.full_messages.to_sentence
					render 'index'
				end
			else
				@order.errors.add(:discount_code,:invalid,message: "Invalid Discount Code") 
				flash[:error] = @order.errors.full_messages.to_sentence
				render 'index'
			end
		else
			@order.confirmed_at = Time.now
			@order.origin_price = @order.total_price
			@order.grand_total = @order.discounted_price.to_f + @order.shipping_cost.to_f
			if @order.save
					render 'receipt'
				else
					flash[:error] = @order.errors.full_messages.to_sentence
					render 'index'
			end
		end
  end

  private
  def order_params
    params.require(:order).permit(:name, :address, :discount_code, :discounted_price, :shipping_cost)
  end
end
