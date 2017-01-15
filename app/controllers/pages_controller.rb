class PagesController < ApplicationController
  def index
    @cars = Car.all
    @customizations = Customization.all
    render 'index.html.erb', layout: 'application2.html.erb'
  end

  def home
    @cars = Car.all
    @customizations = Customization.last(3)
    @users = User.all
    @comments = Comment.all
    @car_one = @cars.first
    @car_two = @cars.second
    @car_three = @cars.third

    render 'home.html.erb'
  end
end
