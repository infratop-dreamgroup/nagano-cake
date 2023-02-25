class Admin::ItemsController < ApplicationController

  def index
    @items = Item.all.page(params[:page])
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
    if  @item.update(item_params)
      redirect_to admin_item_path(@item.id)
    else
      render :edit
    end
  end
  
  def search
   @itemss = Item.search_by_keyword(params[:keyword])
  end

  private
  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id, :price, :is_active, :image)
  end

end
