class AddDateToContact < ActiveRecord::Migration[5.2]
  def change
    add_column :contact_forms, :date_depart, :datetime
    add_column :contact_forms, :date_arrivee, :datetime
    add_column :contact_forms, :nb_enfant, :string
    add_column :contact_forms, :nb_adulte, :string
    add_column :contact_forms, :age_enfant, :string
  end
end
