class Product < ApplicationRecord
  belongs_to :user
  belongs_to :category

  validates :name, :desc, :price, :presence => true
end
