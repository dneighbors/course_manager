require 'spec_helper'

describe Course do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :prerequisites => "value for prerequisites",
      :max_size => 1,
      :min_size => 1,
      :overview => "value for overview",
      :subject_id => 1,
      :level_id => 1,
      :location_id => 1,
      :delivery_type_id => 1,
      :cost_in_cents => 1,
      :early_bird_cost_in_cents => 1,
      :early_bird_date => Time.now
    }
  end

  it "should create a new instance given valid attributes" do
    Course.create!(@valid_attributes)
  end
end
