class AddImageIdToMangas < ActiveRecord::Migration[5.1]
  def change
  	add_column :mangas, :image_id, :integer
	 add_index :mangas, :image_id
  end
end


