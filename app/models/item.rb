class Item < ApplicationRecord
  has_many :orders, through: :order_details, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :customers, through: :cart_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy

  has_one_attached :image

  def tax_price
    price*1.1
  end

end
