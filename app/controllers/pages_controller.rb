class PagesController < ApplicationController
  def home
    croisieres_all = Croisiere.all
    @croisieres = croisieres_all.sort_by {|a| a.croisiere_destination}
  end
end
