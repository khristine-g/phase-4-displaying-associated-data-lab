class ReviewsController < ApplicationController

    def index
      reviews = Review.all.order(rating: :desc)
      render json: reviews
      # render json: reviews
      render json: reviews, include: :dog_house
    end
  
  end