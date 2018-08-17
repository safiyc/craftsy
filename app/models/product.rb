class Product < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :category, optional: true
  has_many :reviews

  validates :name, :desc, :price, :product_img_file_name, :presence => true
  validates_format_of :price, :with => /\A\d{1,4}(.\d{0,2})?\z/

  # product_img is a paperclip thing
  has_attached_file :product_img, styles: { product_index: "250x250", product_show: "350x350" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :product_img, content_type: /\Aimage\/.*\z/
end
