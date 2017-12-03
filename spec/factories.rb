FactoryBot.define do
  factory :category do
    name "Clothing"
  end

  factory :user do
    username('Name1')
    email('email@email.com')
    password('password')
    password_confirmation('password')
    admin(false)

  end

  factory(:product) do
    name('Spatula')
    desc('This handmade spatula is made with redwood.')
    price('15')
    user_id(2)
    category_id(2)
  end
end
