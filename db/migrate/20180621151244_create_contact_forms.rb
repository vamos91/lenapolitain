class CreateContactForms < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_forms do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.text :content

      t.timestamps
    end
  end
end
