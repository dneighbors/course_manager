require 'spec_helper'

describe "/courses/index.html.erb" do
  include CoursesHelper

  before(:each) do
    assigns[:courses] = [
      stub_model(Course,
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
        :early_bird_cost_in_cents => 1
      ),
      stub_model(Course,
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
        :early_bird_cost_in_cents => 1
      )
    ]
  end

  it "renders a list of courses" do
    render
    response.should have_tag("tr>td", "value for name".to_s, 2)
    response.should have_tag("tr>td", "value for prerequisites".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for overview".to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", 1.to_s, 2)
  end
end
