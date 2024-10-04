class CarsController < ApplicationController
  before_action :set_car, only: [ :show ]
  def index
    @cars = Car.includes(:owner).all
  end

  def show
    @review = Review.new
    @favourite = Favourite.new
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
