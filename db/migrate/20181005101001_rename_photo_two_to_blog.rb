class RenamePhotoTwoToBlog < ActiveRecord::Migration[5.2]
  def change
    rename_column :blogs, :photo_two, :illustration
  end
end
