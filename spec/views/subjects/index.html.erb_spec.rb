require 'spec_helper'

describe "/subjects/index.html.erb" do
  include SubjectsHelper

  before(:each) do
    assigns[:subjects] = [
      stub_model(Subject,
        :code => "value for code",
        :name => "value for name"
      ),
      stub_model(Subject,
        :code => "value for code",
        :name => "value for name"
      )
    ]
  end

  it "renders a list of subjects" do
    render
  end
end
