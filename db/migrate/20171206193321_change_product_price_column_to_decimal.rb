class ChangeProductPriceColumnToDecimal < ActiveRecord::Migration[5.1]
  def change
    change_column :products, :price, 'decimal USING CAST(price AS decimal)'
  end
end
