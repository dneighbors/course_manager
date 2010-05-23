require 'spec_helper'

describe "/courses/edit.html.erb" do
  include CoursesHelper

  before(:each) do
    assigns[:course] = @course = stub_model(Course,
      :new_record? => false,
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

  it "renders the edit course form" do
    render

    response.should have_tag("form[action=#{course_path(@course)}][method=post]") do
      with_tag('input#course_name[name=?]', "course[name]")
      with_tag('textarea#course_prerequisites[name=?]', "course[prerequisites]")
      with_tag('input#course_max_size[name=?]', "course[max_size]")
      with_tag('input#course_min_size[name=?]', "course[min_size]")
      with_tag('textarea#course_overview[name=?]', "course[overview]")
      with_tag('input#course_subject_id[name=?]', "course[subject_id]")
      with_tag('input#course_level_id[name=?]', "course[level_id]")
      with_tag('input#course_location_id[name=?]', "course[location_id]")
      with_tag('input#course_delivery_type_id[name=?]', "course[delivery_type_id]")
      with_tag('input#course_cost_in_cents[name=?]', "course[cost_in_cents]")
      with_tag('input#course_early_bird_cost_in_cents[name=?]', "course[early_bird_cost_in_cents]")
    end
  end
end
