class CarsController < ApplicationController
  def index
    @cars = Car.all
    render :index
  end

  def show
    @article = Car.find(params[:id])
    render :show
  end
end
