class AddReferencesToComnnt < ActiveRecord::Migration[5.0]
  def change
    add_column :comnnts, :blog_id, :integer
  end
end
