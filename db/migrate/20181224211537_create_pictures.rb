class CreatePictures < ActiveRecord::Migration[5.2]
  def change
    create_table :pictures do |t|
      t.integer :photographer_id
      t.integer :category_id
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
