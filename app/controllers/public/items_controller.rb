class Public::ItemsController < ApplicationController
  def top
    #@genres = Genre.all
    @items = Item.all
  end

  def index
    @items = Item.all.page(params[:page])
  end

  def show
    @item = Item.find(params[:id])
    @cart_item = CartItem.new
  end
end
