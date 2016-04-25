class AddIndexToCategoriesMajor < ActiveRecord::Migration
  def change
  	add_index :categories, :major, unique: true
  end
end
