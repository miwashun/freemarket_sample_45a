Brand.create(name: "offBrand", created_at: "1900-01-01", updated_at: "2000-01-01")
Brand.create(name: "CHANEL", created_at: "1900-01-01", updated_at: "2000-01-01")
Brand.create(name: "LouisVuitton", created_at: "1900-01-01", updated_at: "2000-01-01")
Brand.create(name: "Supreme", created_at: "1900-01-01", updated_at: "2000-01-01")
Brand.create(name: "Nike", created_at: "1900-01-01", updated_at: "2000-01-01")
User.create(email: "test@gmail.com", password: "testtest", reset_password_token: "test2", reset_password_sent_at: "2019-01-01", remember_created_at: "2019-01-01", users: "test", created_at: "2019-01-01", updated_at: "2019-01-01", last_name: "Tanaka", last_name_kana: "Tanaka", first_name: "Tarou", first_name_kana: "Tarou", phone_number: 00000000000 , nickname: "Tarou", birth_year_id: 1900, birth_month: 1 , birth_day: 1)
c1 = Category.create(name: "レディース", created_at: "2019-01-01", updated_at: "2019-01-01")
tops = c1.children.create(name: 'トップス')
jaketto = c1.children.create(name: 'ジャケット')
wanppisu = c1.children.create(name: 'ワンピース')
pants = c1.children.create(name: 'パンツ')
skirt = c1.children.create(name: 'スカート')
roomwear = c1.children.create(name: 'ルームウェア')
legwear = c1.children.create(name: 'レッグウェア')
hat = c1.children.create(name: '帽子')
bag = c1.children.create(name: 'バッグ')
clock = c1.children.create(name: '時計')
shoose = c1.children.create(name: '靴')
accessory = c1.children.create(name: 'アクセサリー')
hairaccessory = c1.children.create(name: 'ヘアアクセサリー')
other = c1.children.create(name: 'その他')

tshirt = tops.children.create(name: 'Tシャツ')
poloshirt = tops.children.create(name: 'ポロシャツ')
jersey = tops.children.create(name: 'ジャージ')
ring = accessory.children.create(name: 'リング')
earrings = accessory.children.create(name: 'イヤリング')
piercing = accessory.children.create(name: 'ピアス')
grand_other = accessory.children.create(name: 'その他')

Category.create(name: "メンズ", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "インテリア・住まい・小物", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "本・ゲーム・音楽", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "家電・スマホ・カメラ", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "スポーツ・レジャー", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "ベビー・キッズ", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "コスメ・香水・美容", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "ハンドメイド", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "チケット", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "自動車・オートバイ", created_at: "2019-01-01", updated_at: "2019-01-01")
Category.create(name: "その他", created_at: "2019-01-01", updated_at: "2019-01-01")
Item.create(name: "ladies1",  price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "ladies2", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "ladies3", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "ladies4", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "mens1", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "mens2", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "mens3", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "mens4", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "babyKids1", price: 1000,detail: "test", user_id: 1, category_id: 3, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "babyKids2", price: 1000,detail: "test", user_id: 1, category_id: 3, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "babyKids3", price: 1000,detail: "test", user_id: 1, category_id: 3, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "babyKids4", price: 1000,detail: "test", user_id: 1, category_id: 3, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "cosmeticsPerfumeBeauty1", price: 1000,detail: "test", user_id: 1, category_id: 4, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "cosmeticsPerfumeBeauty2", price: 1000,detail: "test", user_id: 1, category_id: 4, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "cosmeticsPerfumeBeauty3", price: 1000,detail: "test", user_id: 1, category_id: 4, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "cosmeticsPerfumeBeauty4", price: 1000,detail: "test", user_id: 1, category_id: 4, subcategory_id: 0, subsubcategory: 0, brand_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "chanel", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 2, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "chanel", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 2, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "chanel", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 2, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "chanel", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 2, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "louis_vuitton", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 3, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "louis_vuitton", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 3, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "louis_vuitton", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 3, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "louis_vuitton", price: 1000,detail: "test", user_id: 1, category_id: 1, subcategory_id: 0, subsubcategory: 0, brand_id: 3, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Supreme", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 4, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Supreme", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 4, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Supreme", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 4, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Supreme", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 4, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Nike", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 5, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Nike", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 5, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Item.create(name: "Nike", price: 1000,detail: "test", user_id: 1, category_id: 2, subcategory_id: 0, subsubcategory: 0, brand_id: 5, created_at: "2019-01-01", updated_at: "2019-01-01", prefecture_id: 1, condition_id: 1, shipping_date_id: 1, burden_id: 1)
Image.create(image_url: open("./app/assets/images/ladies1.jpg"), item_id: 1, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/ladies2.jpg"), item_id: 2, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/ladies3.jpg"), item_id: 3, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/ladies4.jpg"), item_id: 4, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/mens1.jpg"), item_id: 5, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/mens2.jpg"), item_id: 6, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/mens3.jpg"), item_id: 7, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/mens4.jpg"), item_id: 8, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/baby1.jpg"), item_id: 9, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/baby2.jpg"), item_id: 10, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/baby3.jpg"), item_id: 11, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/baby4.jpg"), item_id: 12, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/cosme1.jpg"), item_id: 13, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/cosme2.jpg"), item_id: 14, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/cosme3.jpg"), item_id: 15, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/cosme4.jpg"), item_id: 16, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/chanel1.jpg"), item_id: 17, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/chanel2.jpg"), item_id: 18, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/chanel3.jpg"), item_id: 19, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/chanel4.jpg"), item_id: 20, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/louisvuitton1.jpg"), item_id: 21, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/louisvuitton2purse.jpg"), item_id: 22, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/louisvuitton3.jpg"), item_id: 23, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/louisvuitton4.jpg"), item_id: 24, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/supreme1.jpg"), item_id: 25, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/supreme2.png"), item_id: 26, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/supreme3.jpg"), item_id: 27, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/supreme4.jpg"), item_id: 28, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/nike1.jpg"), item_id: 29, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/nike2.jpg"), item_id: 30, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/nike3.jpg"), item_id: 31, created_at: "2019-01-01", updated_at: "2019-01-01")
Image.create(image_url: open("./app/assets/images/nike4.jpg"), item_id: 32, created_at: "2019-01-01", updated_at: "2019-01-01")
