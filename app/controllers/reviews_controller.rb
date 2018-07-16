class ReviewsController < ApplicationController

  def index
   # @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
     @review = Review.new(params_review)
     @review.croisiere_id = params[:review][:croisiere_id]
     @test = @review.rating
     @star_rating = @test[0]
     @review.rating = @star_rating
    if @review.save
      redirect_to root_path
    end
  end

  def edit
    find_reviews
  end

  def update
    find_reviews
    @review.update(params_review)
    redirect_to root_path
  end

  def destroy
    find_reviews
    @review.destroy
    redirect_to root_path
  end

  private

  def find_reviews
    @review = Review.find(params[:id])
  end

  def params_review
    params.require(:review).permit(:rating, :description, :nom, :prenom)
  end
end
