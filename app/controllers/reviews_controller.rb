class ReviewsController < ApplicationController
  include ReviewsHelper

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render 'show'
    else
      render 'new'
    end
  end

end
