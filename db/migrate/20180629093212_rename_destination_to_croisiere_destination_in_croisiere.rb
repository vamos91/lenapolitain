class RenameDestinationToCroisiereDestinationInCroisiere < ActiveRecord::Migration[5.2]
  def change
    rename_column :croisieres, :destination, :croisiere_destination
  end
end
