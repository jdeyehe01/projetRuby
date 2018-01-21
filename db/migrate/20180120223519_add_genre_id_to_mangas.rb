class AddGenreIdToMangas < ActiveRecord::Migration[5.1]
  def change
	  	add_column :mangas, :genre_id, :integer
	    add_index :mangas, :genre_id
  end
end
