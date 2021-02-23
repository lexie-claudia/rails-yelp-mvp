class ReviewsController < ApplicationController
  # GET /reviews/new
  def new
    @review = review.new
  end

  # POST /reviews
  def create
    @review = review.new(review_params)

    if @review.save
      redirect_to @review, notice: 'review was successfully created.'
    else
      render :new
    end
  end
end
