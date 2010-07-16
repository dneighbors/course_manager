require 'spec_helper'

describe CoursesController do

  def mock_course(stubs={})
    @mock_course ||= mock_model(Course, stubs)
  end

  describe "GET index" do
    it "assigns all courses as @courses" do
      Course.stub!(:find).with(:all).and_return([mock_course])
      get :index
      assigns[:courses].should == [mock_course]
    end
  end

  describe "GET show" do
    it "assigns the requested course as @course" do
      Course.stub!(:find).with("37").and_return(mock_course)
      get :show, :id => "37"
      assigns[:course].should equal(mock_course)
    end
  end


end
