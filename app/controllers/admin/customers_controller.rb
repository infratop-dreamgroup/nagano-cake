class Admin::CustomersController < ApplicationController
  before_action :set_q, only: [:index, :search]
  def index
    @customers = Customer.page(params[:page]).per(10)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
  end

  def update
    @customer = Customer.find(params[:id])
    if @customer.update(customer_params)
      redirect_to admin_customer_path(@customer)
    else
      render :edit
    end
  end
  
  def search
    @results = @q.result
  end

  private
  
  def set_q
    @q = Customer.ransack(params[:q])
  end

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :email, :post_code, :address, :phone_number, :is_deleted)
  end
end
