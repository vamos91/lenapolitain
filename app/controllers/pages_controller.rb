class PagesController < ApplicationController
  def home
    croisieres_all = Croisiere.all
    @croisieres = croisieres_all.sort_by {|a| a.croisiere_destination}
   # @last_reviews = Review.all.last(3)
   @last_review = Review.last
  end

end
