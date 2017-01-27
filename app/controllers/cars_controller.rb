class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @all_cars = Car.all
    num_of_comments = current_user.comments.length
    if num_of_comments < 3
      @cars = Car.all.limit(1)
    elsif num_of_comments >= 3 && num_of_comments < 5
      @cars = Car.all.limit(2)
    elsif num_of_comments >= 5 && num_of_comments < 7
      @cars = Car.all.limit(3)
    else
      @cars = Car.all
    end
      
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
    @all_cars = Car.all
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
