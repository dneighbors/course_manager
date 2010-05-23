class CoursesController < ApplicationController
  # GET /courses
  # GET /courses.xml
  def index
    if params[:subject_id]
      @courses = Subject.find(params[:subject_id]).courses
    else
      @courses = Course.all
    end

    respond_to do |format|
      #replace with search pathing later
      format.html
      format.xml  { render :xml => @courses }
    end
  end

  # GET /courses/1
  # GET /courses/1.xml
  def show
    @course = Course.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course }
    end
  end
end
