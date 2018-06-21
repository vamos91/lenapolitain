class ApplicationController < ActionController::Base
  before_action :navbar
  def navbar
    @croisieres_napolitain = Croisiere.all.reverse
  end
end
