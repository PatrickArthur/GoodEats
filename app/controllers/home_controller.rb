class HomeController < ApplicationController

  def index
    @restaurants = Restaurant.limit(10)
  end



  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state,
      :zip_code, :description, :category)
  end

end
