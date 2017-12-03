require 'rails_helper'

describe Product do
  it { should validate_presence_of :name }
  it { should validate_presence_of :desc }
  it { should validate_presence_of :price }
  it { should validate_presence_of :product_img_file_name }
  it { should belong_to :user }
  it { should belong_to :category }
  it { should have_many :reviews }
end
