class CreateCroiseres < ActiveRecord::Migration[5.2]
  def change
    create_table :croiseres do |t|
      t.string :photo
      t.string :titre
      t.text :description
      t.string :carte
      t.string :tarif
      t.string :duree

      t.timestamps
    end
  end
end
