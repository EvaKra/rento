class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @booking = Booking.find(params[:booking_id])
  end

  def edit
    @review = Review.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @booking = Booking.find(params[:booking_id])
    @review.booking_id = @booking.id
    @review.user = current_user
    if @review.save
      redirect_to  review_path(@review)
    else
      render :new
    end
  end

  def update
    @review = Review.find(params[:id])
    if @review.update(review_params)
      redirect_to  review_path(@review)
    else
      render :edit
    end
  end
  private

  def review_params
    params.require(:review).permit(:description)
  end
end
