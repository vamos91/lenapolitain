class AddDestinationToContactForm < ActiveRecord::Migration[5.2]
  def change
        add_column :contact_forms, :destination, :string

  end
end
