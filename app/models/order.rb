class Order < ActiveRecord::Base
	belongs_to :customer, -> {where name: :customer_10}, counter_cache: :count_of_orders #, inverse_of: :orders
end

=begin

	List of Available options

	:autosave					To save/delete associated records		
	:class_name				Specify Class name	
	:counter_cache		In customers table, count of orders will be saved (Note: have to create a column)
	:dependent				Associated object will be destroyed/deleted when parent object is destroyed/deleted.
	:foreign_key			Specify foreign key column name	
	:inverse_of				Keep associated object and parent object in single memory
	:polymorphic			Set to true for polymorphic association
	:touch						Updates associated/parent record updated_at when parent/associated record changes are saved
	:validate					validate associated records before saving
	
=end
