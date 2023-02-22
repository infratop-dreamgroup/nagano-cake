class Public::AddressesController < ApplicationController
  def index
    @address = Address.new
    @addresses= Address.all
  end

  def edit
  end

  def create
     
     @address = Address.new(address_params)
     @address.save
     redirect_to "/addresses"
  end

  def update
    @address=Address.find(params[:id])
    redirect_to address(@address.id) 
  end

  def destroy
  end

   private
def address_params
  params.require(:address).permit(:post_code ,:address ,:name)
end
end
