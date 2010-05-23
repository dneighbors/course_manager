require 'spec_helper'

describe "/subjects/show.html.erb" do
  include SubjectsHelper
  before(:each) do
    assigns[:subject] = @subject = stub_model(Subject,
      :code => "value for code",
      :name => "value for name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ code/)
    response.should have_text(/value\ for\ name/)
  end
end
