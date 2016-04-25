class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.integer :minor
      t.string :name
      t.string :address
      t.text :description
      t.float :latitude
      t.float :longitude
      t.attachment :url_image
      t.integer :city_id
      t.integer :category_id

      t.timestamps null: false
    end

    add_index :places, :city_id
    add_index :places, :category_id
  end
end
