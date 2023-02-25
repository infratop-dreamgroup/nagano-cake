class Public::AddressesController < ApplicationController
  def index

    @address = Address.new
    @addresses= Address.all
  end

  def edit
    @address = Address.find(params[:id])
  end

  def create
     @address = Address.new(address_params)
     @address.customer_id = current_customer.id
    if @address.save
     @address.save
     flash[:success] = '配送先を登録しました'
     redirect_to "/addresses"
    else
     flash[:danger] ='必要情報を入力してください／ハイフンは使用できません'
     redirect_to "/addresses"
    end
  end

  def update
    @address = Address.find(params[:id])
    if @address.update(address_params)
       flash[:notice] = "Shipcity was successfully updated"
    redirect_to addresses_path
    else
     render "edit"
    end
  end

  def destroy
  @address = Address.find(params[:id])
  @address.destroy
  flash[:success] = '削除しました'
  redirect_to addresses_path
  end

   private
def address_params
  params.require(:address).permit(:post_code ,:address , :name ,:customer_id )
end
end
