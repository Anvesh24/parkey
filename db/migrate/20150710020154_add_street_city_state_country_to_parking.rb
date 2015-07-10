class AddStreetCityStateCountryToParking < ActiveRecord::Migration
  def change
    add_column :parkings, :street, :string
    add_column :parkings, :city, :string
    add_column :parkings, :state, :string
    add_column :parkings, :country, :string
  end
end
