class Api::V1::CustomizationsController < ApplicationController
  def index
    @customizations = Customization.all.limit(8)
    @customizations = @customizations.shuffle
    render 'index.json.jbuilder'
  end

  def show
    @customization = Customization.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end
end
