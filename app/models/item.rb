class Item < ApplicationRecord
  has_many :orders, through: :order_details, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :customers, dependent: :destroy
end
