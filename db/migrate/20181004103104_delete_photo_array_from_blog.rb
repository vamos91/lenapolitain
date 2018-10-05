class DeletePhotoArrayFromBlog < ActiveRecord::Migration[5.2]
  def change
    remove_column :blogs, :photos_array
  end
end
