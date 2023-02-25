class Public::OrdersController < ApplicationController
  before_action :authenticate_customer!

  def new
    @order = Order.new
    @addresses = current_customer.addresses.all
  end

  def confirm
    @order = Order.new(order_params)

    if params[:order][:address_option] == "0"
        @order.post_code = current_customer.post_code
        @order.address = current_customer.address
        @order.name = current_customer.last_name + current_customer.first_name
    elsif params[:order][:address_option] == "1"
        ship = Address.find(params[:order][:customer_id])
        @order.post_code = ship.post_code
        @order.address = ship.address
        @order.name = ship.name
    elsif params[:order][:address_option] = "2"
        @order.post_code = params[:order][:post_code]
        @order.address = params[:order][:address]
        @order.name = params[:order][:name]
    else
         render 'new'
    end

    @cart_items = current_customer.cart_items.all
    @order.customer_id = current_customer.id
  end

  def create
    @order = Order.new(order_params)
    @order.customer_id = current_customer.id
    @order.save

    current_customer.cart_items.each do |cart_item|
      @ordered_item = OrderDetail.new
      @ordered_item.item_id = cart_item.item_id
      @ordered_item.quantity = cart_item.quantity
      @ordered_item.total_price = (cart_item.item.price*1.08).floor
      @ordered_item.order_id =  @order.id
      @ordered_item.save
    end

        current_customer.cart_items.destroy_all
        redirect_to complete_orders_path
  end

  def complete
  end

  def index
    @orders = current_customer.orders
  end

  def show
    @order = Order.find(params[:id])
    @ordered_items = @order.order_details
    @total = 0
  end

  private
    def order_params
        params.require(:order).permit(:postage, :pay_type, :name, :address, :post_code,:customer_id,:billing_amount, :order_status)
    end
end