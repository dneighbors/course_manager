class ContentsController < ApplicationController
  # GET /contents
  # GET /contents.xml
  def index
    @courses = Course.all
    respond_to do |format|
      format.html 
    end
  end

end