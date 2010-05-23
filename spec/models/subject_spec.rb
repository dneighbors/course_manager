require 'spec_helper'

describe Subject do
  before(:each) do
    @valid_attributes = {
      :code => "value for code",
      :name => "value for name"
    }
  end

  it "should create a new instance given valid attributes" do
    Subject.create!(@valid_attributes)
  end
end
