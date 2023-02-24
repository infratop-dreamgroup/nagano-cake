class Public::HomesController < ApplicationController
  def top
    @items = Item.all
    #@items = Item.order('id DESC').limit(4)
  end

  def about
  end
  
  def get_image#画像取得メソッド(画像選択していない場合no_imageが表示される)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [300, 400]).processed
  end
  
end
