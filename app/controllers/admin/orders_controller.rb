

class Admin::OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    @order_details = @order.order_details
    
      # 下記３行は商品合計を出すため
    @sum = 0
    @subtotals = @order_details.map { |product_order| product_order.once_price * product_order.quantity }
    @sum = @subtotals.sum
  end

  def update
    @order = Order.find(params[:id])
    @order.update(order_params)
    @order_details = @order.order_details

    if @order.status == "入金確認"
      @order_details.each do |order_detail|
        order_detail.make_status = "製作待ち"
        order_detail.save
      end
    end
    redirect_to admin_order_path
  end

  private

  def order_params
    params.require(:order).permit(:status)
  end

end