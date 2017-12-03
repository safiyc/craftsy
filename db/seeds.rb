# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

superuser = User.new
superuser.admin = true
superuser.email = "user1@email.com"
superuser.password = "password"
superuser.password_confirmation = "password"
superuser.save!

category = [
  "Art",
  "Accessories",
  "Home",
  "Plushies"
]

product = [
  ["Kirbys", "These Kirby plushies are super adorable.", "5.50", 1, 4, "plushy1.jpg", "image/jpeg"],
  ["Wooden Spatula", "This spatula is made from redwood.", "7.50", 1, 3, "wooden_spatula.jpg", "image/jpeg"],
  ["Leather Bag", "This handcrafted bag combines style with sturdiness to make for a great daily use.", "25.99", 1, 2, "accessory1.jpg", "image/jpeg"],
  ["Silver Charm Bracelet", "Simple and elegant. A great gift for your special someone.", "14.49", 1, 2, "accessory2.jpg", "image/jpeg"],
  ["Pokemon", "Eevee, one of the original Pokemons. Super cute.", "10.25", 1, 4, "plushy3.jpg", "image/jpeg"],
]

category.each do |name|
  Category.create( name: name )
end

product.each do |name, desc, price, user_id, category_id, img_name, img_type|
  Product.create( name: name, desc: desc, price: price, user_id: user_id, category_id: category_id, product_img_file_name: img_name, product_img_content_type: img_type )
end
