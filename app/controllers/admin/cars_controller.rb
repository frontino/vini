class Admin::CarsController < ApplicationController
  # GET /admin/cars
  # GET /admin/cars.json
  def index
    @admin_cars = Car.all
  end

  # GET /admin/cars/1
  # GET /admin/cars/1.json
  def show
    @admin_car = Car.find(params[:id])

  end

  # GET /admin/cars/new
  # GET /admin/cars/new.json
  def new
    @admin_car = Admin::Car.new

  end

  # GET /admin/cars/1/edit
  def edit
    @admin_car = Admin::Car.find(params[:id])
  end

  # POST /admin/cars
  # POST /admin/cars.json
  def create
    @admin_car = Admin::Car.new(params[:admin_car])

    respond_to do |format|
      if @admin_car.save
        format.html { redirect_to @admin_car, notice: 'Car was successfully created.' }
        format.json { render json: @admin_car, status: :created, location: @admin_car }
      else
        format.html { render action: "new" }
        format.json { render json: @admin_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /admin/cars/1
  # PUT /admin/cars/1.json
  def update
    @admin_car = Admin::Car.find(params[:id])

    respond_to do |format|
      if @admin_car.update_attributes(params[:admin_car])
        format.html { redirect_to @admin_car, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @admin_car.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/cars/1
  # DELETE /admin/cars/1.json
  def destroy
    @admin_car = Admin::Car.find(params[:id])
    @admin_car.destroy

    respond_to do |format|
      format.html { redirect_to admin_cars_url }
      format.json { head :no_content }
    end
  end
end
