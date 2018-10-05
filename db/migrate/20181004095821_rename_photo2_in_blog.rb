class RenamePhoto2InBlog < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :photo2, :photo_two
  end
end
