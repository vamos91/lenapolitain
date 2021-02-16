class StaticController < ApplicationController
  def bateau
    render "static/bateau"
  end

  def ile_aux_fleurs
    render "static/ile_aux_fleurs"
  end

  def alacarte
    @contact_form = ContactForm.new
  end

  def transatlantique
    @review = Review.new
    @reviews = Review.all
   # @reviews_transatlantique = Review.where(croisiere_id: @transatlantique)
  end

end
