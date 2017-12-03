class ToChangePriceColumnType < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, :string
  end
end
