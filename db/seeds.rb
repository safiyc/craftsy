# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new
admin.admin = true
admin.email = "admin@email.com"
admin.password = "password"
admin.password_confirmation = "password"
admin.save!

category = [
  "Art",
  "Accessories",
  "Home",
  "Plushies"
]

product = [
  ["Neck Decorator", "An ornament to make your presence a source of envy to all women... and men.", 24.99, 1, 2, "accessory1.jpg", "image/jpeg"],
  ["Wooden Spatula", "This spatula is made from redwood.", 7.50, 1, 3, "wooden_spatula.jpg", "image/jpeg"],
  ["Leather Bag", "This handcrafted bag combines style with sturdiness to make for a great daily use.", 25.99, 1, 2, "accessory3.jpg", "image/jpeg"],
  ["Silver Charm Bracelet", "Simple and elegant. A great gift for your special someone.", 14.49, 1, 2, "accessory2.jpg", "image/jpeg"],
  ["Flowers And Vases", "Simple and elegant. A great piece to hang in the bathroom.", 14.49, 1, 1, "painting1.jpg", "image/jpeg"],
  ["Eevee", "Eevee, one of the original Pocket Monsters. Super cute.", 10.49, 1, 4, "plushy3.jpg", "image/jpeg"],
  ["Green Fluff", "When its belly is pressed, even more cuteness awaits.", 10.49, 1, 4, "plushy2.jpg", "image/jpeg"],
  ["Kirbies", "These balls of cuteness will melt the coldest of hearts.", 8.29, 1, 4, "plushy1.jpg", "image/jpeg"],
  ["Apple Cider VS Fruit Punch", "Simple and elegant. A great piece to hang in the bathroom.", 14.49, 1, 1, "painting2.jpg", "image/jpeg"],
  ["Wooden Bowl", "This spatula is made from redwood.", 7.50, 1, 3, "wooden_bowl.jpg", "image/jpeg"],
]

category.each do |name|
  Category.create( name: name )
end

# product_img is product_img_file_name... is a paperclip gem thing
product.each do |name, desc, price, user_id, category_id, img_name, img_type|
  Product.create( name: name, desc: desc, price: price, user_id: user_id, category_id: category_id, product_img: File.new("app/assets/images/#{img_name}"), product_img_content_type: img_type )
end
