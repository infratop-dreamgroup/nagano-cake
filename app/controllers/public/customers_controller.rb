class Public::CustomersController < ApplicationController
  def show
    @customer = current_customer
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = current_customer
    if @customer.update(customer_params)
      flash[:notice] = "会員情報を更新しました。"
      redirect_to customers_mypage_path
    else
      render :edit
    end
  end

  def unsubscribe
    @customer = current_customer
  end

  def withdrawal
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "退会が完了しました！"
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :post_code, :address, :phone_number, :is_deleted)
  end
end
