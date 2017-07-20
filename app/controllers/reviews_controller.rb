class ReviewsController < ApplicationController
  include ReviewsHelper

  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    if session[:user_id]
      @review = Review.new(review_params)
      if @review.save
        render 'show'
      else
        render 'new'
      end
    else
      redirect_to '/login'
    end
  end

end
