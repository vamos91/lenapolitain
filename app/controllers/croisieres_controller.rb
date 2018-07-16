class CroisieresController < ApplicationController

  def index
    croisieres_all = Croisiere.all
    @croisieres = croisieres_all.sort_by {|a| a.croisiere_destination}
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
    @contact_form = ContactForm.new
    @reviews = Review.where(croisiere_id: @croisiere.id).reverse
    @review = Review.new
    @croisieres_par_destination = Croisiere.where(croisiere_destination: @croisiere.croisiere_destination)
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

  private

   def find_croisiere
    @croisiere = Croisiere.find(params[:id])
  end

  def params_croisiere
    params.require(:croisiere).permit(:tarif, :duree, :titre, :description, :photo, :photo_cache, :carte, :carte_cache, :croisiere_destination)
  end

end
