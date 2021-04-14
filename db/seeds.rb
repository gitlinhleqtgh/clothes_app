# User.create!(name: "Le Linh",
#              email:
#   "lelinh@gmail.com",
#              phone: "0395784141",
#              password: "123456",
#              password_confirmation: "123456")
# 5.times do |i|
#   User.create!(name: "Le Linh",
#                email:
#   "lelinh#{i}@gmail.com",
#                phone: "0395784141",
#                password: "123456",
#                password_confirmation: "123456")
# end

Category.create!(name: "Gender")
Category.create!(name: "Sale")
Category.create!(name: "Product")
Category.create!(name: "Men",
                id_parent: 1)
Category.create!(name: "Women",
                id_parent: 1)
Category.create!(name: "Bag",
                id_parent: 3)
Category.create!(name: "Sweather",
                id_parent: 3)
Category.create!(name: "Shoes",
                id_parent: 3)

10.times do |i|
  name = Faker::Name.name
  category_id = 5
  price = i * 100
  images = "/images/shop_03.jpg"
  discount = 15
  size = 1
  description = "The versatile Multi Pochette Accessoires is composed of a bag, a pouch, and a round coin purse, all made from pastel-colored Monogram Giant canvas. This hybrid bag features an adjustable jacquard strap with Louis Vuitton Malletier inscribed on it for shoulder or cross-body wear as well as a removable gold-color chain for hand and short-shoulder carry."
  quantity = i * 5
  Product.create!(
    category_id: category_id,
    name: name,
    price: price,
    discount: discount,
    size: size,
    description: description,
    quantity: quantity)
end
10.times do |i|
  name =  Faker::Name.name
  category_id = 4
  price = i * 100
  images = "/images/shop_04.jpg"
  discount = 15
  size = 2
  description = Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  quantity = i * 5
  Product.create!(name: name,
    category_id: category_id,
    price: price,
    discount: discount,
    size: size,
    description: description,
    quantity: quantity)
  end
