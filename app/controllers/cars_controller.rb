class CarsController < ApplicationController
  before_action :set_car, only: [ :show ]
  def index
    @cars = Car.all
  end

  def show
    @review = Review.new
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
end
