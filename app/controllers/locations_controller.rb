class LocationsController < ApplicationController

  # GET /locations/1
  # GET /locations/1.xml
  def show
    @location = Location.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @location }
    end
  end

  # GET /locations
  # GET /locations.xml
  def index
    @locations = Location.find(:all)

    respond_to do |format|
      format.html 
      format.xml  { render :xml => @locations }
    end
  end

end
