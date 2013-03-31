class LocationsController < ApplicationController
    def create
    @location = Location.new(params[:location])
      respond_to do |format|
        itsaved = @location.save

          format.html # create.html.erb
          format.json { render json: @location }
      end
    end
end
