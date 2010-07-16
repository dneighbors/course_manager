require 'spec_helper'

describe SubjectsController do

  def mock_subject(stubs={})
    @mock_subject ||= mock_model(Subject, stubs)
  end

  describe "GET index" do
    it "assigns all subjects as @subjects" do
      Subject.stub!(:find).with(:all, :order => "name").and_return([mock_subject])
      get :index
      assigns[:subjects].should == [mock_subject]
    end
  end

  describe "GET show" do
    it "assigns the requested subject as @subject" do
      Subject.stub!(:find).with("37").and_return(mock_subject)
      get :show, :id => "37"
      assigns[:subject].should equal(mock_subject)
    end
  end


end
