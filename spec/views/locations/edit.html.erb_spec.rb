require 'spec_helper'

describe "/locations/edit.html.erb" do
  include LocationsHelper

  before(:each) do
    assigns[:location] = @location = stub_model(Location,
      :new_record? => false,
      :name => "value for name",
      :address => "value for address",
      :city => "value for city",
      :state => "value for state",
      :zip => "value for zip",
      :phone => "value for phone",
      :url => "value for url",
      :map_url => "value for map_url"
    )
  end

  it "renders the edit location form" do
    render

    response.should have_tag("form[action=#{location_path(@location)}][method=post]") do
      with_tag('input#location_name[name=?]', "location[name]")
      with_tag('input#location_address[name=?]', "location[address]")
      with_tag('input#location_city[name=?]', "location[city]")
      with_tag('input#location_state[name=?]', "location[state]")
      with_tag('input#location_zip[name=?]', "location[zip]")
      with_tag('input#location_phone[name=?]', "location[phone]")
      with_tag('input#location_url[name=?]', "location[url]")
      with_tag('input#location_map_url[name=?]', "location[map_url]")
    end
  end
end
