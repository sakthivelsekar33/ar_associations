class AddColumnCountOfOrdersToCustomer < ActiveRecord::Migration
  def change
  	add_column :customers, :count_of_orders, :string
  end
end
