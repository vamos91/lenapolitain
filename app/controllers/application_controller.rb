class ApplicationController < ActionController::Base
  before_action :navbar
  def navbar
    @croisieres_napolitain = Croisiere.all.sort_by {|a| a.croisiere_destination}
  end

  def default_url_options
  { host: ENV["HOST"] || "localhost:3000" }
end

end
