class Order < ApplicationRecord
  belongs_to :customer
  has_many :items, through: :order_details, dependent: :destroy
  has_many :order_details, dependent: :destroy
  
  enum pay_type: { credit_card: 0, transfer: 1 }
end
