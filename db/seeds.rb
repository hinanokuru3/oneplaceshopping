# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShoppingCenter.create(name: "東急百貨店渋谷本店",
                      address: "東京都渋谷区道玄坂2-24-1",
                      parking_area: "地下駐車場、渋谷立体パーキング、渋谷区役所前駐車場"
                      )
Shop.create(name: "ファミリア", address: "東京都渋谷区道玄坂2-24-1", opening_hours: "10:30~18:30", regular_holiday: nil, floor: "六階", phone_number: "0334773267", category: "子供服", payment_method: "現金、クレジット、コード決済",
            shopping_center: ShoppingCenter.first)
Shop.create(name: "丸福珈琲店", address: "東京都渋谷区道玄坂2-24-1", opening_hours: "10:30~18:30", regular_holiday: nil, floor: "三階", phone_number: "0334773627", category: "喫茶店", payment_method: "現金",
            shopping_center: ShoppingCenter.first)
Shop.create(name: "Dior", address: "東京都渋谷区道玄坂2-24-1", opening_hours: "10:30~18:30", regular_holiday: nil, floor: "一階", phone_number: "0354893090", category: "化粧品", payment_method: "現金、クレジット、コード決済",
            shopping_center: ShoppingCenter.first)
            
ShoppingCenter.create(name: "西武池袋本店",
                      address: "東京都豊島区南池袋1-28-1",
                      parking_area: "西部パーキング"
                     )
                     
ShoppingCenter.create(name: "ISETAN新宿店",
                      address: "東京都新宿区新宿3-14-1",
                      parking_area: "本館パーキング"
                     )                     
ShoppingCenter.create(name: "JOINUS横浜",
                      address: "神奈川県横浜市西区南幸1-5-1",
                      parking_area: "ジョイナス駐車場、横浜駅西口地下駐車場、横浜駅西口第2駐車場"
                     )
                
Shop.create(name: "崎陽軒", address: "神奈川県横浜市西区南幸1-5-1", opening_hours: "7:00~21:00", regular_holiday: nil, floor: "二階", phone_number: "0453216850", category: "お弁当、お惣菜", payment_method: "現金、クレジット、コード決済",
            shopping_center: ShoppingCenter.fourth)
Shop.create(name: "ゴディバ", address: "神奈川県横浜市西区南幸1-5-1", opening_hours: "10:00~21:00", regular_holiday: nil, floor: "一階", phone_number: "0453210921", category: "洋菓子", payment_method: "現金、クレジット、コード決済",
            shopping_center: ShoppingCenter.fourth)
Shop.create(name: "フレッドペリー", address: "神奈川県横浜市西区南幸1-5-1", opening_hours: "10:00~21:00", regular_holiday: nil, floor: "一階", phone_number: "0456200225", category: "レディース&メンズファッション", payment_method: "現金、クレジット、コード決済",
            shopping_center: ShoppingCenter.fourth)
    
    
    
    
    
    
                     