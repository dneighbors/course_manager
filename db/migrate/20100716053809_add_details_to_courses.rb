class AddDetailsToCourses < ActiveRecord::Migration
  def self.up
    add_column :courses, :details, :text
  end

  def self.down
    remove_column :courses, :details
  end
end
