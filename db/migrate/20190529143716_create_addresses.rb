class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :country
      t.string :location
      t.float :latitude
    	t.float :longitude
      t.timestamps
    end
  end
end
