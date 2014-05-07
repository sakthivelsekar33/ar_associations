class Customer < ActiveRecord::Base
	has_many :orders, dependent: :destroy, before_add: :change_the_customer_id do #, inverse_of: :customer, autosave: :true
		def first_order
			first
		end
	end
	has_one :contact_information, as: :contact_info

	has_many :custom_orders, dependent: :destroy, class_name: 'Order', foreign_key: :customer_id, before_add: :change_the_customer_id

	def change_the_customer_id(record)
		record.customer_id = 12345;
		puts self.inspect;
		puts record.inspect;
	end

end


=begin

#Queries

c = Customer.create(name: :customer_1)

1. c.orders.create(created_at: :Time.now)

2. c.corders.create

#=> Eager Load Associated Data

3. c = Customer.first(include: :orders)

#=> Force Reloading of Data

c = Customer.first

4. c.orders(true) || c.orders(force_reload: true)

#=> Delete Associated object

c = Customer.create(name: :customer_1)

o = Order.create(customer_id: c.id)

c.orders = [Order.new] #=> This will delete the already associated orders for that customer and save the new order for that customer
 
=end 