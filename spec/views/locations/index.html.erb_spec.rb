require 'spec_helper'

describe "/locations/index.html.erb" do
  include LocationsHelper

  before(:each) do
    assigns[:locations] = [
      stub_model(Location,
        :name => "value for name",
        :address => "value for address",
        :city => "value for city",
        :state => "value for state",
        :zip => "value for zip",
        :phone => "value for phone",
        :url => "value for url",
        :map_url => "value for map_url"
      ),
      stub_model(Location,
        :name => "value for name",
        :address => "value for address",
        :city => "value for city",
        :state => "value for state",
        :zip => "value for zip",
        :phone => "value for phone",
        :url => "value for url",
        :map_url => "value for map_url"
      )
    ]
  end

  it "renders a list of locations" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for address".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for state".to_s, 2)
    response.should have_tag("tr>td", "value for zip".to_s, 2)
    response.should have_tag("tr>td", "value for phone".to_s, 2)
    response.should have_tag("tr>td", "value for url".to_s, 2)
    response.should have_tag("tr>td", "value for map_url".to_s, 2)
  end
end
