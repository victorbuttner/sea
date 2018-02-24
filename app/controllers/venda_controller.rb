class VendaController < ApplicationController
  def index
  	@products = Product.all.where(status: 'ATIVO')
    @order_item = current_order.order_items.new
  end
end
