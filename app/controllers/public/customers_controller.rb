class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    @customer.update(customer_params)
    redirect_to customers_mypage_path
  end

  def unsubscribe
  end

  def withdrawal
    # @customer = Customer.find(current_user.id)
    #現在ログインしているユーザーを@userに格納
    # @customer.update(is_active: "Invalid")
    #updateで登録情報をInvalidに変更
    # reset_session
    #sessionIDのresetを行う
    # redirect_to root_path
    #指定されたrootへのpath
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :post_code, :address, :phone_number)
  end
end
