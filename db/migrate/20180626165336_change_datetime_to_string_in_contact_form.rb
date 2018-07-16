class ChangeDatetimeToStringInContactForm < ActiveRecord::Migration[5.2]
  def change
      change_column :contact_forms, :date_depart, :string
      change_column :contact_forms, :date_arrivee, :string
  end
end
