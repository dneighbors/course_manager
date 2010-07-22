require 'spec_helper'

describe Location do
  before(:each) do
    @valid_attributes = {
      :name => "value for name",
      :address => "value for address",
      :city => "value for city",
      :state => "value for state",
      :zip => "value for zip",
      :phone => "value for phone",
      :url => "value for url",
      :map_url => "value for map_url"
    }
  end

  it "should create a new instance given valid attributes" do
    Location.create!(@valid_attributes)
  end
end
