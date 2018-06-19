class CroisieresController < ApplicationController

  def index
    @croisieres = Croisiere.all.reverse
  end

  def new
    @croisiere = Croisiere.new
    @croisieres = Croisiere.all
  end

  def create
     @croisiere = Croisiere.new(params_croisiere)
     if @croisiere.save
      redirect_to croisieres_path
     end
  end

  def show
    find_croisiere
  end

  def update
    find_croisiere
    @croisiere.update(params_croisiere)
    redirect_to new_croisiere_path
  end

  def edit
    find_croisiere
  end

  def destroy
    find_croisiere
    @croisiere.destroy
    redirect_to new_croisiere_path
  end

  def reduce_string
    find_croisiere
    @croisiere = @croisieres.truncate(10)
  end

  private

   def find_croisiere
    @croisiere = Croisiere.find(params[:id])
  end

  def params_croisiere
    params.require(:croisiere).permit(:tarif, :duree, :titre, :description, :photo, :photo_cache, :carte, :carte_cache)
  end

end
