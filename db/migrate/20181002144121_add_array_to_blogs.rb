class AddArrayToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :photos_array, :string, array: true, default: []
  end
end
