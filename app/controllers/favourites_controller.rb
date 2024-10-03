class FavouritesController < ApplicationController
  before_action :set_car, only: [ :create ]

  def index
    @favourites = Favourite.all
  end

  def create
    @favourite = Favourite.new
    @favourite.car_id = @car.id

    if @favourite.save
      redirect_to car_path(@car)
    else
      render "cars/show", status: :unprocessable_entity
    end
  end

  def destroy
    @favourite = Favourite.find(params[:id])
    @favourite.destroy
    redirect_to favourites_path, status: :see_other
  end

  private
  def set_car
    @car = Car.find(params[:car_id])
  end

  # def favourite_params
  #   params.require(:favourite).permit(:car_id)
  # end
end
