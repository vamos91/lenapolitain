class RenameCroisereToCroisieres < ActiveRecord::Migration[5.2]
  def change
    rename_table :croiseres, :croisieres
  end
end
