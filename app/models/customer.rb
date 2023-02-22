class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :items, through: :cart_items
  has_many :cart_items, dependent: :destroy

  validates :last_name, presence: true
  validates :first_name, presence: true
  VALID_KANA_REGEX = /\A[ァ-ヶー－]+\z/
  validates :last_name_kana, presence: true, format: { with: VALID_KANA_REGEX }
  validates :first_name_kana, presence: true, format: { with: VALID_KANA_REGEX }
  VALID_POSTAL_CODE_REGEX = /\A\d{3}[-]?\d{4}\z/
  validates :post_code, presence: true, format: { with: VALID_POSTAL_CODE_REGEX }
  validates :address, presence: true
  VALID_PHONE_REGEX = /\A\d{10}$|^\d{11}\z/
  validates :phone_number, presence: true, format: { with: VALID_PHONE_REGEX }, uniqueness: true
  validates :is_deleted, inclusion: { in: [true, false] }
end
