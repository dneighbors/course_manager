class CreateCourses < ActiveRecord::Migration
  def self.up
    create_table :courses do |t|
      t.string :name
      t.text :prerequisites
      t.integer :max_size
      t.integer :min_size
      t.text :overview
      t.integer :subject_id
      t.integer :level_id
      t.integer :location_id
      t.integer :delivery_type_id
      t.integer :cost_in_cents
      t.integer :early_bird_cost_in_cents
      t.datetime :early_bird_date

      t.timestamps
    end
  end

  def self.down
    drop_table :courses
  end
end
