class HomeController < ApplicationController
  def index
    @cars = Car.limit(8).order("id desc")
  end

end
