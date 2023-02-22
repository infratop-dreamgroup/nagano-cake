class Public::ItemsController < ApplicationController
  def index
    @items = Item.all
    @genres = Genre.where
  end

  def show
  end
end
