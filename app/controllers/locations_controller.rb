class LocationsController < ApplicationController
    def create
    @location = Location.new(params[:location])
      respond_to do |format|
        itsaved = @location.save

          format.html # create.html.erb
          format.json { render json: @location }
      end
    end
    def show
      @location = Location.find(params[:id])

      respond_to do |format|
        format.html # show.html.erb
        format.json { render json: @location }
      end
    end
end
