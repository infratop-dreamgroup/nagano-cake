class Order < ApplicationRecord
  belongs_to :customer
  has_many :items, through: :order_details, dependent: :destroy
  has_many :order_details, dependent: :destroy

  enum order_status: {
     "入金待ち":0, "入金確認":1, "製作中":2, "発送準備中":3, "発送済み":4
  }
  enum pay_type: { credit_card: 0, transfer: 1 }

private
  def order_params
    params.require(:order_detail).permit(:order_status , :production_status)
  end
end
