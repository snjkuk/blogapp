class CreateBlogs < ActiveRecord::Migration[5.0]
  def change
    create_table :blogs do |t|
      t.text :title
      t.text :description
      t.string :images
      t.string :dropdown

      t.timestamps
    end
  end
end
