class Admin::OrdersController < ApplicationController
  def show
     @orders = Order.all
     @order = Order.find(params[:id])
     @item = Item.find(params[:id])
     #@ordered_products = @order.ordered_products
  end

  def update
  end
  
   private

  def order_params
    params.require(:order).permit(:order_status)
  end
end
