class Location < ActiveRecord::Base
  attr_accessible :latitude, :location, :longitude
  geocoded_by :location
  after_validation :geocode, :if => :location_changed?
end
