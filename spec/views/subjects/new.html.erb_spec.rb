require 'spec_helper'

describe "/subjects/new.html.erb" do
  include SubjectsHelper

  before(:each) do
    assigns[:subject] = stub_model(Subject,
      :new_record? => true,
      :code => "value for code",
      :name => "value for name"
    )
  end

  it "renders new subject form" do
    render

    response.should have_tag("form[action=?][method=post]", subjects_path) do
      with_tag("input#subject_code[name=?]", "subject[code]")
      with_tag("input#subject_name[name=?]", "subject[name]")
    end
  end
end
