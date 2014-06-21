class ReviewsController < ApplicationController

  def index
    @restaurants = Restaurant.all
    @reviews = review.all
  end


  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build(review_params)

    if @review.save
      flash[:notice] = "Success!"
      redirect_to @restaurant
    else
      flash[:notice] = "Your review couldnt be saved."
      redirect_to @restaurant
    end
  end



  private
    def review_params
      params.require(:review).permit(:review, :actor, :description)
    end
end
