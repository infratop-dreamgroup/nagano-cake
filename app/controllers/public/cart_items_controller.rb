class Public::CartItemsController < ApplicationController
  def index
    @cart_items = current_customer.cart_items.all
    @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }
  end

  def update
    cart_item = CartItem.find(params[:id])
    cart_item.quantity = params[:cart_item][:id]
    cart_item.update(cart_item_params)
    redirect_to cart_items_path
  end

  def destroy
    cart_item = CartItem.find_by(id: params[:id], customer_id: current_customer.id)
    cart_item.destroy
    redirect_to cart_items_path
  end

  def destroy_all
    current_customer.cart_items.destroy_all
    redirect_to cart_items_path
  end

  def create
    is_item = false#フラグ 初期値はfalseにする
    @cart_item = CartItem.new(cart_item_params)
    @cart_item.customer_id = current_customer.id

    @cart_items = current_customer.cart_items.all#既にカートにある商品の情報が知りたい為カートの商品を全て取得
    @cart_items.each do |cart_item|              #カート内の商品と新しく追加するカート商品で同じものがあるか調べる
      if cart_item.item_id == @cart_item.item_id
        is_item = true#同一商品があった場合フラグをtrueにする
        new_quantity = cart_item.quantity + @cart_item.quantity#ｶｰﾄ内の商品の数+既にあるｶｰﾄ内商品の数
        cart_item.update_attribute(:quantity, new_quantity)#auantityにnew_quantityを渡す
      end
    end
    if is_item#フラグがtrueならば保存せずにリダイレクト
      redirect_to cart_items_path
    else#フラグがfalseならば保存後ﾘﾀﾞｲﾚｸﾄ
      if @cart_item.save
        redirect_to cart_items_path
      else
        @total = @cart_items.inject(0) { |sum, item| sum + item.sum_of_price }
        render :index
      end
    end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity, :item_id)
  end

end
