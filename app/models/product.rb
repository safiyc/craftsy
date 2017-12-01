class Product < ApplicationRecord
  validates :name, :desc, :price, :presence => true
end
