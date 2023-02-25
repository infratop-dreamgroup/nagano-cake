class Admin::OrderDetailsController < ApplicationController
  def update
     @order_detail = OrderDetail.find(params[:id])
     @order_detail.update(order_detail_params)
     @order = @order_detail.order
     @order_details = @order.order_details

    if @order_detail.production_status == "製作中"
        @order.order_status =2
        @order.save
    end

    if @order_details.all?{ |order_detail| order_detail.production_status == "製作完了" }
       @order.order_status =3
        @order.save
    end
     redirect_to admin_order_path(@order.id)
    end
    private
   def order_detail_params
    params.require(:order_detail).permit(:production_status)
end
end


