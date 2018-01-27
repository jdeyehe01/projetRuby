class CreateManga < ActiveRecord::Migration[5.1]
  def change
    create_table :mangas do |t|
      t.string :title
      t.string :title_traduction
      t.date :realise_date
      t.integer :tome_number
    end
  end
end
