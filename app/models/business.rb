module Business
	class Supplier < ActiveRecord::Base
		has_one :account, class_name: 'Business::Account'
	end

	class Account < ActiveRecord::Base
		belongs_to :supplier, class_name: 'Business::Supplier'
	end

end

=begin
	s = Business::Supplier.first

	1. s.create_account	
	
=end