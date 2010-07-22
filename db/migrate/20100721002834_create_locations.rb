class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :url
      t.string :map_url

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
