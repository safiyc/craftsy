class Product < ApplicationRecord
  belongs_to :user
  
  validates :name, :desc, :price, :presence => true
end
