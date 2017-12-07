FactoryBot.define do
  factory :order_status do
    name "MyString"
  end
  factory :review do
    rating 3
    comment 'This is a review comment.'
    user_id 1
    product_id 3
  end

  factory :category do
    name "Plushies"
  end

  factory :user do
    username 'User1'
    email 'email@email.com'
    password 'password'
    password_confirmation 'password'
    admin true
  end

  factory :product do
    name 'Spatula'
    desc 'This handmade spatula is made with redwood.'
    price '15.00'
    product_img_file_name "wooden_spatula.jpg"
    product_img_content_type "image/jpeg"
    user_id 1
    category_id 3
  end
end
