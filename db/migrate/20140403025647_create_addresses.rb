class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :street_name
      t.string :village_name
      t.string :district
      t.string :pin_code
    	t.integer :contact_info_id
    	t.string :contact_info_type
      t.timestamps
    end
  end
end
