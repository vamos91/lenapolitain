class ContactFormsController < ApplicationController
  def new
   @contact_form = ContactForm.new
end

def create
  @contact_form = ContactForm.new(contact_page_params)
  if @contact_form.save
    redirect_to new_contact_form_path
  end
end

private

  def contact_page_params
    params.require(:contact_form).permit(:firstname, :lastname, :email, :content, :date_depart, :nb_enfant, :nb_adulte, :destination, :date_arrivee, :age_enfant)
  end
end

