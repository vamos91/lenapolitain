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

end
