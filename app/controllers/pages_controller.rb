class PagesController < ApplicationController
  def home
    @croisieres = Croisiere.all.reverse
  end
end
