class ReviewsController < ApplicationController

def new
  @review = Review.new
end

def edit
  @reviw = Review.find(params[:id])
end

def create
  @review = Review.new(private_params)
  @review.save
   redirect_to  review_path(@review)
end

def private_params
    params.require(:review).permit(:name, :address, :rating)
 end

 def update
  @review = Review.find(params[:id])
  @review.update(private_params)
   redirect_to  review_path(@review)
end


end
