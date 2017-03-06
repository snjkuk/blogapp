class AddImageToBlogs < ActiveRecord::Migration[5.0]
  def change
    add_column :blogs, :avatar, :string
  end
end
