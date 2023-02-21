class Admin::OrdersController < ApplicationController
  def show
     @orders = Order.all
     # @order= Order.find(params[:id])
     # @ordered_items = @order.ordered_items
  end

  def update
  end
end
