class ReviewsController < ApplicationController
  def new
    @review = Review.new(movie_title: params[:movie_title])
  end

  def create
    @review = Review.create(review_params)
    if @review.valid?
      flash[:success] = "Review Created"
      redirect_to reviews_index_path
    else
      flash[:error] = @review.errors.full_messages
      render 'new'
    end
  end

  def index
    if params[:movie_title]
      @reviews = Review.where(movie_title: params[:movie_title])
    else
      @reviews = Review.all.reverse
    end
  end

  private

    def review_params
      params.require(:review).permit(:email, :rating, :comment, :movie_title)
    end
end
