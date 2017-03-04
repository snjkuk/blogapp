class CreateCategoryys < ActiveRecord::Migration[5.0]
  def change
    create_table :categoryys do |t|
      t.text :title

      t.timestamps
    end
  end
end
