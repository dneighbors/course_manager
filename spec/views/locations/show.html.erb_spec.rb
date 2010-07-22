require 'spec_helper'

describe "/locations/show.html.erb" do
  include LocationsHelper
  before(:each) do
    assigns[:location] = @location = stub_model(Location,
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

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ address/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ state/)
    response.should have_text(/value\ for\ zip/)
    response.should have_text(/value\ for\ phone/)
    response.should have_text(/value\ for\ url/)
    response.should have_text(/value\ for\ map_url/)
  end
end
