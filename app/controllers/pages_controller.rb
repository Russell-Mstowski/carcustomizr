class PagesController < ApplicationController
  def index
    @all_cars = Car.all
    @cars = Car.all
    @customizations = Customization.all
    render 'index.html.erb', layout: 'application2.html.erb'
  end

  def home
    @all_cars = Car.all
    @cars = Car.all
    @customizations = Customization.last(3)
    @users = User.all
    @comments = Comment.all

    render 'home.html.erb'
  end
end
