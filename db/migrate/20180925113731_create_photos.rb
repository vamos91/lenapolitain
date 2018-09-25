class CreatePhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :photos do |t|
      t.string :photo1
      t.string :photo2
      t.string :photo3
      t.string :photo4
      t.references :blog, foreign_key: true

      t.timestamps
    end
  end
end
