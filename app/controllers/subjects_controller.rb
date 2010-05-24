class SubjectsController < ApplicationController
  # GET /subjects
  # GET /subjects.xml
  def index
    @subjects = Subject.find(:all, :order => "name")

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @subjects }
    end
  end

  # GET /subjects/1
  # GET /subjects/1.xml
  def show
    @subject = Subject.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @subject }
    end
  end
end


