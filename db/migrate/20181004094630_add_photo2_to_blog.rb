class AddPhoto2ToBlog < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :photo2, :string
  end
end
