require 'rails_helper'

describe '.order' do
  it 'should list most recent products from left to right' do
    product1 = FactoryBot.create(:product, name: 'Kirbys', desc: 'These are Kirby plushies.', price: '10.25', product_img_file_name: 'plushy1.jpg', product_img_content_type: 'image/jpeg')
    product2 = FactoryBot.create(:product, name: 'Leather Bag', desc: 'These are Kirby plushies.', price: '10.25', product_img_file_name: 'plushy1.jpg', product_img_content_type: 'image/jpeg')
    expect(Product.all.order('created_at DESC')).to eq([product2, product1])
  end
end
