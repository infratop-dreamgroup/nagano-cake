class Item < ApplicationRecord
  has_many :orders, through: :order_details, dependent: :destroy
  has_many :order_details, dependent: :destroy
  has_many :customers, through: :cart_items, dependent: :destroy
  has_many :cart_items, dependent: :destroy
  belongs_to :genre

  has_one_attached :image

  scope :search_by_keyword, -> (keyword) { where("name LIKE ?", "%#{keyword}%") }

  def get_image#画像取得メソッド(画像選択していない場合no_imageが表示される)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [300, 400]).processed
  end

  def tax_price
    price*1.1
  end

validates :image, presence: true
validates :name, presence: true
validates :introduction , presence: true
validates :genre_id, presence: true
validates :price , presence: true

end
