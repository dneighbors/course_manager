require 'spec_helper'

describe "/subjects/edit.html.erb" do
  include SubjectsHelper

  before(:each) do
    assigns[:subject] = @subject = stub_model(Subject,
      :new_record? => false,
      :code => "value for code",
      :name => "value for name"
    )
  end

  it "renders the edit subject form" do
    render

    response.should have_tag("form[action=#{subject_path(@subject)}][method=post]") do
      with_tag('input#subject_code[name=?]', "subject[code]")
      with_tag('input#subject_name[name=?]', "subject[name]")
    end
  end
end
