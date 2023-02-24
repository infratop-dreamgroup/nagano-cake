# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
    email: 'test@test.com',
    password: 'abc123',
)
customers = [
  { last_name: "田村", first_name: "政則", last_name_kana: "タムラ", first_name_kana: "マサノリ", email: "10000@000.com", post_code: "0000000", address: "日本", phone_number: "10000000000", is_deleted: "false", password: "123456"},
  { last_name: "嘉賀", first_name: "大河", last_name_kana: "カガ", first_name_kana: "タイガ", email: "3@1.com", post_code: "0000000", address: "日本", phone_number: "30000000000", is_deleted: "false", password: "123456"},
  { last_name: "巾", first_name: "琉綺", last_name_kana: "ハバ", first_name_kana: "ロキ", email: "4@1.com", post_code: "0000000", address: "日本", phone_number: "40000000000", is_deleted: "false", password: "123456"},
  { last_name: "雄鹿", first_name: "健夢", last_name_kana: "オガ", first_name_kana: "タケム", email: "5@1.com", post_code: "0000000", address: "日本", phone_number: "50000000000", is_deleted: "false", password: "123456"},
  { last_name: "小平", first_name: "総雪", last_name_kana: "オダイラ", first_name_kana: "ソウユキ", email: "6@1.com", post_code: "0000000", address: "日本", phone_number: "60000000000", is_deleted: "false", password: "123456"},
  { last_name: "美川", first_name: "由紀斗", last_name_kana: "ミカワ", first_name_kana: "ユキト", email: "7@1.com", post_code: "0000000", address: "日本", phone_number: "70000000000", is_deleted: "false", password: "123456"},
  { last_name: "小島", first_name: "明亜", last_name_kana: "コジマ", first_name_kana: "アキア", email: "8@1.com", post_code: "0000000", address: "日本", phone_number: "80000000000", is_deleted: "false", password: "123456"},  
  { last_name: "縫島", first_name: "泰實", last_name_kana: "ヌイジマ", first_name_kana: "ヤスミツ", email: "9@1.com", post_code: "0000000", address: "日本", phone_number: "90000000000", is_deleted: "false", password: "123456"},
  { last_name: "中島", first_name: "理敏", last_name_kana: "ナカジマ", first_name_kana: "リト", email: "10@1.com", post_code: "0000000", address: "日本", phone_number: "000000000", is_deleted: "false", password: "123456"},
  { last_name: "山銅", first_name: "力", last_name_kana: "サンドウ", first_name_kana: "リキ", email: "11@1.com", post_code: "0000000", address: "日本", phone_number: "1000000000", is_deleted: "false", password: "123456"},
  { last_name: "西山", first_name: "太郎", last_name_kana: "ニシヤマ", first_name_kana: "タロウ", email: "12@1.com", post_code: "0000000", address: "日本", phone_number: "2000000000", is_deleted: "false", password: "123456"},
  { last_name: "梅谷", first_name: "昭也", last_name_kana: "ウマタニ", first_name_kana: "アキヤ", email: "13@1.com", post_code: "0000000", address: "日本", phone_number: "3000000000", is_deleted: "false", password: "123456"},
  { last_name: "甲元", first_name: "健人", last_name_kana: "コウモト", first_name_kana: "ケント", email: "14@1.com", post_code: "0000000", address: "日本", phone_number: "4000000000", is_deleted: "false", password: "123456"},
  { last_name: "松村", first_name: "英男", last_name_kana: "マツムラ", first_name_kana: "ヒデオ", email: "15@1.com", post_code: "0000000", address: "日本", phone_number: "5000000000", is_deleted: "false", password: "123456"},
  { last_name: "東大垣", first_name: "正明", last_name_kana: "ヒガシオオガキ", first_name_kana: "マサアキ", email: "16@1.com", post_code: "0000000", address: "日本", phone_number: "6000000000", is_deleted: "false", password: "123456"},
  { last_name: "大宅", first_name: "仁正", last_name_kana: "オオタク", first_name_kana: "ヒトマサ", email: "17@1.com", post_code: "0000000", address: "日本", phone_number: "7000000000", is_deleted: "false", password: "123456"},
  { last_name: "鉄地河原", first_name: "茂樹", last_name_kana: "テッチカワハラ", first_name_kana: "シゲキ", email: "18@1.com", post_code: "0000000", address: "日本", phone_number: "8000000000", is_deleted: "false", password: "123456"},
  { last_name: "房川", first_name: "益気", last_name_kana: "フサカワ", first_name_kana: "マスキ", email: "20@1.com", post_code: "0000000", address: "日本", phone_number: "9000000000", is_deleted: "false", password: "123456"},
  { last_name: "石井", first_name: "輝", last_name_kana: "イシイ", first_name_kana: "テル", email: "21@1.com", post_code: "0000000", address: "日本", phone_number: "0100000000", is_deleted: "false", password: "123456"},
  { last_name: "四月朔日", first_name: "志晴", last_name_kana: "ワタヌギ", first_name_kana: "シハル", email: "22@1.com", post_code: "0000000", address: "日本", phone_number: "0200000000", is_deleted: "false", password: "123456"},
  { last_name: "小松", first_name: "理樹", last_name_kana: "コマツ", first_name_kana: "マサキ", email: "23@1.com", post_code: "0000000", address: "日本", phone_number: "0300000000", is_deleted: "false", password: "123456"},
  { last_name: "松尾", first_name: "甚右衛門", last_name_kana: "マツオ", first_name_kana: "ジンエモン", email: "24@1.com", post_code: "0000000", address: "日本", phone_number: "0400000000", is_deleted: "false", password: "123456"},
  { last_name: "小川原", first_name: "幸治", last_name_kana: "オガワハラ", first_name_kana: "コウジ", email: "25@1.com", post_code: "0000000", address: "日本", phone_number: "0500000000", is_deleted: "false", password: "123456"},
  { last_name: "小屋浦", first_name: "百辰", last_name_kana: "コヤウラ", first_name_kana: "ハクノブ", email: "26@1.com", post_code: "0000000", address: "日本", phone_number: "0600000000", is_deleted: "false", password: "123456"},
  { last_name: "関根", first_name: "光尋", last_name_kana: "セキネ", first_name_kana: "ミヒロ", email: "27@1.com", post_code: "0000000", address: "日本", phone_number: "0700000000", is_deleted: "false", password: "123456"},
  { last_name: "揚", first_name: "悟之介", last_name_kana: "コウ", first_name_kana: "ゴノスケ", email: "28@1.com", post_code: "0000000", address: "日本", phone_number: "0800000000", is_deleted: "false", password: "123456"},
  { last_name: "影近", first_name: "彩田朗", last_name_kana: "カゲチカ", first_name_kana: "サイタロウ", email: "29@1.com", post_code: "0000000", address: "日本", phone_number: "0900000000", is_deleted: "false", password: "123456"},
  { last_name: "造田", first_name: "鼬", last_name_kana: "ソウダ", first_name_kana: "イタチ", email: "30@1.com", post_code: "0000000", address: "日本", phone_number: "0010000000", is_deleted: "false", password: "123456"},
  { last_name: "道政", first_name: "諄", last_name_kana: "ミチマサ", first_name_kana: "マコト", email: "31@1.com", post_code: "0000000", address: "日本", phone_number: "0020000000", is_deleted: "false", password: "123456"},
]
Customer.create(customers)


  #{ last_name: "", first_name: "", last_name_kana: "", first_name_kana: "", email: "@1.com", post_code: "0000000", address: "日本", phone_number: "0000000000", is_deleted: "false", encrypted_password: "123456"},