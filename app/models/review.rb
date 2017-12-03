class Review < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :product, optional: true

  validates :rating, :comment, :presence => true
end
