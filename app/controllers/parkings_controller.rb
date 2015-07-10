class ParkingsController < ApplicationController

  def index
    if params[:search].present?
      @parkings = Parking.near(params[:search],2)
    else      
      @parkings = Parking.all
    end

    
  end
  def new
    @new_parking = Parking.new

  end

  def show
    @parking = Parking.find(params[:id])
  end

  def create
    @new_parking = Parking.new(parking_params)
    if @new_parking.save
      redirect_to @new_parking
    else
      render 'new'
    end
  end

  def update

    
  end


   private

    def parking_params
      params.require(:parking).permit(:area, :type, :description,
                                   :street, :city, :state)
    end

end
