class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all

    render 'index.html.erb'
  end

  def create
    @car = Car.new(
      make: params[:make],
      model: params[:model],
      year: params[:year])

    if @car.save
      redirect_to '/cars'
    else
      redirect_to '/cars/new'
    end
  end

  def show
    @car = Car.find_by(id: params[:id])
    @cars = Car.all.shuffle
    render 'show.html.erb'
  end

  def edit
    @car = Car.find_by[id: params[:id]]
    render 'edit.html.erb'
  end

  def update
    car = Car.find_by(id: params[:id])

    car.make = params[:make]
    car.model = params[:model]
    car.year = params[:year]

    if car.save
      redirect_to '/cars'
    else
      redirect_to '/cars/new'
    end
  end

  def destroy
    car = Car.find_by[id: params[:id]]
    car.destroy

    redirect_to '/cars'
  end

  def threedmodel
  end
end
