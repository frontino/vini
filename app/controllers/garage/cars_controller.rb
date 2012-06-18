class Garage::CarsController < ApplicationController
  def index
    @cars = Car.all
  end

  # GET /admin/cars/1
  # GET /admin/cars/1.json
  def show
    @car = Car.find(params[:id])
  end
end