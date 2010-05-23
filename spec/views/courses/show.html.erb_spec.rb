require 'spec_helper'

describe "/courses/show.html.erb" do
  include CoursesHelper
  before(:each) do
    assigns[:course] = @course = stub_model(Course,
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
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ name/)
    response.should have_text(/value\ for\ prerequisites/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/value\ for\ overview/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
    response.should have_text(/1/)
  end
end
