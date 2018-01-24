class AddAuteurIdToManga < ActiveRecord::Migration[5.1]
  def change
  	add_column :mangas, :auteur_id, :integer
  	add_index :mangas, :auteur_id
  end
end



