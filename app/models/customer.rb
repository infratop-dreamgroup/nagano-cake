class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :orders, dependent: :destroy
  has_many :addresses, dependent: :destroy
  has_many :items, through: :cart_items
  has_many :cart_items, dependent: :destroy
  
  enum is_active: {Available: false, Invalid: true}
    #有効会員はfalse、退会済み会員はtrue

  def active_for_authentication?
      super && (self.is_active === "Available")
  end
    #is_activeが有効の場合は有効会員(ログイン可能)
end
