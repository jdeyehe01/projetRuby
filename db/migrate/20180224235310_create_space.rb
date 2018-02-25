class CreateSpace < ActiveRecord::Migration[5.1]
  def change
    create_table :spaces do |t|
      t.integer :manga_id
      t.integer :auteur_id
    end
  end
end
