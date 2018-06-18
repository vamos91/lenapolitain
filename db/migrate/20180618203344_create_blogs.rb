class CreateBlogs < ActiveRecord::Migration[5.2]
  def change
    create_table :blogs do |t|
      t.string :titre
      t.text :description
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
