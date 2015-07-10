class Parking < ActiveRecord::Base
  belongs_to :user
  geocoded_by :address
  after_validation :geocode
  # reverse_geocoded_by :latitude, :longitude
  # after_validation :reverse_geocode

 
  
  def address
    [street, city, state, country].compact.join(', ')
  end

end
