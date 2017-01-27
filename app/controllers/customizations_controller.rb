class CustomizationsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all
    @customizations = Customization.all.limit(2)
    render 'index.html.erb', layout: 'application3.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    customization = Customization.new(
      color: params[:color],
      wheels: params[:wheels],
      rims: params[:rims],
      car_id:  params[:car_id],
      user_id: current_user.id)

    if customization.save
      redirect_to '/customizations'
    else
      redirect_to '/cars'
    end
  end

  def show
    @all_cars = Car.all
    @cars = Car.all
    @customization = Customization.find_by(id: params[:id]);
    @customizations = Customization.all.shuffle
    @user_customizations = @customization.user.customizations
    @created_at = @customization.created_at.strftime("%b %e, %l:%M %p");

    render 'show.html.erb'
  end

  def destroy
    customization = Customization.find_by(id: params[:id])
    customization.destroy

    redirect_to '/customizations'
  end
end
