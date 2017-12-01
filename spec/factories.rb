FactoryBot.define do
  factory :category do
    name "MyString"
  end
  factory :user do
    
  end
  factory(:product) do
    name('Spatula')
    desc('This handmade spatula is made with redwood.')
    price('15.00')
  end
end
