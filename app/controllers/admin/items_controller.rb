class Admin::ItemsController < ApplicationController
  before_action :set_genres, only: [:index, :new, :show, :edit, :create,:update]
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      redirect_to admin_item_path(@item.id)
    else
      render :new
    end
  end

  def show
    @item = Item.find(params[:id])
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item.id)
  end

  private
    def item_params
      params.require(:item).permit(:name, :introduction, :genre_id, :price, :is_active, :image)
    end

    def set_genres
      @genres = Genre.all
    end
end
