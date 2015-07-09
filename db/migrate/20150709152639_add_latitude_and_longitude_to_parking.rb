class AddLatitudeAndLongitudeToParking < ActiveRecord::Migration
  def change
    add_column :parkings, :latitude, :float
    add_column :parkings, :longitude, :float
  end
end
