class CreateLevels < ActiveRecord::Migration
  def self.up
    create_table :levels do |t|
      t.string :parent_code
      t.string :code

      t.timestamps
    end
  end

  def self.down
    drop_table :levels
  end
end
