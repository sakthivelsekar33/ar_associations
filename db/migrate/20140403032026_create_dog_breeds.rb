class CreateDogBreeds < ActiveRecord::Migration
  def change
    create_table :dog_breeds do |t|
      t.string :name
      t.integer :dog_id

      t.timestamps
    end
  end
end
