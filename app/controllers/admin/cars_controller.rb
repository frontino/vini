class Admin::CarsController < ApplicationController
  before_filter :authenticate_admin_user!
  layout "admin"

  # GET /admin/cars
  # GET /admin/cars.json
  def index
    @cars = Car.all
  end

  # GET /admin/cars/1
  # GET /admin/cars/1.json
  def show
    @car = Car.find(params[:id])
  end

  # GET /admin/cars/new
  # GET /admin/cars/new.json
  def new
    @car = Car.new
  end

  # GET /admin/cars/1/edit
  def edit
    @car = Car.find(params[:id])
  end

  # POST /admin/cars
  # POST /admin/cars.json
  def create
    @car = Car.new(params[:car])

    respond_to do |format|
      if @car.save
        format.html { redirect_to admin_car_url(@car), notice: 'Car was successfully created.' }
        format.json { render json: @car, status: :created, location: @car }
      else
        format.html { render action: "new" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/cars/1
  # PUT /admin/cars/1.json
  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(params[:car])
        format.html { redirect_to admin_car_url(@car), notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cars/1
  # DELETE /admin/cars/1.json
  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to admin_cars_url }
      format.json { head :no_content }
    end
  end
end
