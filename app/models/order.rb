class Order < ApplicationRecord
  belongs_to :order_status
  has_many :order_items
  before_save :update_total
  before_create :set_order_status

  def calculate_total
    self.order_items.collect { |item| item.product.price * item.quantity }.sum
  end

  private

  def set_order_status
    self.order_status_id = 1
  end

  def update_total
    self.total_price = calculate_total
  end
end
