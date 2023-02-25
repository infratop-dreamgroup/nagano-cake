class Address < ApplicationRecord
  belongs_to :customer

  with_options presence: true do
    validates :name
    validates :address
  end

validates :post_code, format: { with: /\A\d{7}\z/ }

def full_address
    [post_code, address, name].join('')
end
end
