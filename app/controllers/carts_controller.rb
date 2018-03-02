class CartsController < ApplicationController
  def show
    @order_items = current_order.order_items

  end

  def destroy
  	current_order = session[:order_id] = nil	
  	redirect_to root_url
  end
end
