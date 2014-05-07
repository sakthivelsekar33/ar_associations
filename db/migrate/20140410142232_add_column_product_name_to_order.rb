class AddColumnProductNameToOrder < ActiveRecord::Migration
  def change
  	add_column :orders, :product_name, :string
  	add_column :orders, :product_id, :string
  end
end
